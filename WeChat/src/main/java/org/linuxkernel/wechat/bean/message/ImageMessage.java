package org.linuxkernel.wechat.bean.message;

import java.util.List;

import org.linuxkernel.wechat.bean.Article;
import org.linuxkernel.wechat.bean.MessageBean;

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
