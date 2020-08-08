import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String emojiUrl;
  final String name;
  final Color color;
  final Color accentColor;
  final bool selected;
  final GestureTapCallback onTap;

  const CategoryTile({
    Key key,
    @required this.emojiUrl,
    @required this.name,
    @required this.color,
    @required this.accentColor,
    @required this.selected,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width > 720.0) {
      return CategoryLargeTile(
        emojiUrl: emojiUrl,
        name: name,
        color: color,
        accentColor: accentColor,
        selected: selected,
        onTap: onTap,
      );
    }

    return CategorySmallTile(
      emojiUrl: emojiUrl,
      name: name,
      color: color,
      accentColor: accentColor,
      selected: selected,
      onTap: onTap,
    );
  }
}

class CategorySmallTile extends StatelessWidget {
  final String emojiUrl;
  final String name;
  final Color color;
  final Color accentColor;
  final bool selected;
  final GestureTapCallback onTap;

  const CategorySmallTile({
    Key key,
    @required this.emojiUrl,
    @required this.name,
    @required this.color,
    @required this.accentColor,
    @required this.selected,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: accentColor,
        borderRadius: BorderRadius.circular(12.0),
        border: selected ? Border.all(color: color) : null,
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.0),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                '$emojiUrl',
                width: 24.0,
                height: 24.0,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                '$name',
                style: Theme.of(context).textTheme.bodyText2.copyWith(color: Color(0xFF363a43), fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryLargeTile extends StatelessWidget {
  final String emojiUrl;
  final String name;
  final Color color;
  final Color accentColor;
  final bool selected;
  final GestureTapCallback onTap;

  const CategoryLargeTile({
    Key key,
    @required this.emojiUrl,
    @required this.name,
    @required this.color,
    @required this.accentColor,
    @required this.selected,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: accentColor,
        border: selected ? Border.all(color: color) : null,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              '$emojiUrl',
              width: 24.0,
              height: 24.0,
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              '$name',
              style: Theme.of(context).textTheme.bodyText2.copyWith(color: Color(0xFF363a43), fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
