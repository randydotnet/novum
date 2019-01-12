import 'package:flutter/material.dart';
import '../../models/article_model.dart';
import './article_tile.dart';

class ArticleListBuilder extends StatelessWidget {

  ArticleListBuilder(this.articles);

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: articles.length,
      padding: EdgeInsets.all(20.0),
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
      itemBuilder: (BuildContext context, int index) {
        return ArticleTile.fromArticleModel(
          articles[index],
          context,
          expanded: index == 0,
        );
      },
    );
  }

}