package com.backkey.bean.message;

import com.backkey.bean.Article;
import com.backkey.bean.MessageBean;

import java.util.List;

public class ImageMessage extends Message {
    public ImageMessage(MessageBean message) {
        super(message);
    }

    private int ArticleCount;
    private List<Article> Articles;

    public int getArticleCount() {
        return ArticleCount;
    }

    public void setArticleCount(int articleCount) {
        ArticleCount = articleCount;
    }

    public List<Article> getArticles() {
        return Articles;
    }

    public void setArticles(List<Article> articles) {
        Articles = articles;
    }
}
