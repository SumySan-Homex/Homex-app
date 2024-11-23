// ignore_for_file: public_member_api_docs, sort_constructors_first
class Pagination {
  int page;
  int total;
  int size;
  String? search;
  Pagination({
    this.page = 1,
    this.total = 100,
    this.size = 15,
    this.search,
  });
  void reset() {
    page = 1;
    total = 100;
    search = null;
  }

  @override
  String toString() {
    return 'Pagination(page: $page, total: $total, size: $size, search: $search)';
  }
}
