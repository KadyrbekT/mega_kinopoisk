class Award {
  final String? title;
  final int? year;
  final String? nomination;
  final bool winning;

  const Award({
    this.title,
    this.year,
    this.nomination,
    this.winning = false,
  });
}
