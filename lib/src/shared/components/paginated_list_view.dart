import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_riverpod/misc.dart';

import '../utils/extensions.dart';
import '../utils/logger_mixin.dart';
import 'shimming_loading.dart';

class PaginatedSliver<T> extends ConsumerWidget with LoggerMixin {
  PaginatedSliver({
    super.key,
    this.pageSize = 10,
    required this.pageFetcher,
    required this.itemBuilder,
    this.onPageLoaded,
    this.emptyListBuilder,
    this.listLoadingBuilder,
    this.itemLoadingBuilder,
    this.nextPageLoadingBuilder,
    this.errorBuilder,
    this.itemListName,
    this.itemListIdBuilder,
    this.skipLoadingOnReload = false,
  });

  final int pageSize;
  final ProviderBase<AsyncValue<List<T>>> Function(int page) pageFetcher;
  final Widget Function(int page, int indexInPage, T item) itemBuilder;
  final void Function(int page, List<T> items)? onPageLoaded;
  final Widget Function()? emptyListBuilder;
  final Widget Function()? listLoadingBuilder;
  final Widget Function()? itemLoadingBuilder;
  final Widget Function()? nextPageLoadingBuilder;
  final Widget Function(Object error, StackTrace stackTrace)? errorBuilder;
  final String? itemListName;
  final String Function()? itemListIdBuilder;
  final bool skipLoadingOnReload;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final page = index ~/ pageSize;
        final indexInPage = index % pageSize;
        final items = ref.watch(pageFetcher(page));

        return items.when(
          data: (list) {
            log.fine('Building item $index');
            if (list.isEmpty && index == 0) {
              return emptyListBuilder?.call() ??
                  const EmptyList(message: 'No results found');
            }

            if (indexInPage >= list.length) {
              return null;
            }

            final item = list[indexInPage];

            if (indexInPage == 0) {
              onPageLoaded?.call(page, list);
            }

            return itemBuilder(page, indexInPage, item);
          },
          loading: () {
            log.fine('Loading page $page');
            if (page > 0 && indexInPage == 0) {
              return nextPageLoadingBuilder?.call() ??
                  const Center(child: CircularProgressIndicator.adaptive());
            }

            final hasNextPage = ref.exists(pageFetcher(page + 1));
            if (hasNextPage) {
              return itemLoadingBuilder?.call() ?? const ListItemLoading();
            }

            if (index > 0) {
              return null;
            }

            return listLoadingBuilder?.call() ?? const ListLoading();
          },
          error: (error, stackTrace) {
            log.warning('Error fetching page $page', error, stackTrace);

            return errorBuilder?.call(error, stackTrace) ?? const ListLoading();
          },
          skipLoadingOnReload: skipLoadingOnReload,
        );
      }),
    );
  }
}

class EmptyList extends StatelessWidget {
  const EmptyList({super.key, required this.message});

  final String message;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 112),
          Text(
            textAlign: TextAlign.center,
            message,
            style: context.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}

class ListLoading extends StatelessWidget {
  const ListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerLoading(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < 7; i++) ...[
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ],
      ),
    );
  }
}

class ListItemLoading extends StatelessWidget {
  const ListItemLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ShimmerLoading(
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
