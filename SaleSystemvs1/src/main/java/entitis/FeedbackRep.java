package entitis;
// Generated Jul 24, 2019 11:13:14 PM by Hibernate Tools 5.1.7.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * FeedbackRep generated by hbm2java
 */
@Entity
@Table(name = "feedback_ rep", catalog = "salesystem")
public class FeedbackRep implements java.io.Serializable {

	private Integer id;
	private Account account;
	private Feedback feedback;
	private Integer title;
	private Integer image;
	private Integer content;

	public FeedbackRep() {
	}

	public FeedbackRep(Account account, Feedback feedback) {
		this.account = account;
		this.feedback = feedback;
	}

	public FeedbackRep(Account account, Feedback feedback, Integer title, Integer image, Integer content) {
		this.account = account;
		this.feedback = feedback;
		this.title = title;
		this.image = image;
		this.content = content;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "username", nullable = false)
	public Account getAccount() {
		return this.account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_feedback", nullable = false)
	public Feedback getFeedback() {
		return this.feedback;
	}

	public void setFeedback(Feedback feedback) {
		this.feedback = feedback;
	}

	@Column(name = "title")
	public Integer getTitle() {
		return this.title;
	}

	public void setTitle(Integer title) {
		this.title = title;
	}

	@Column(name = "image")
	public Integer getImage() {
		return this.image;
	}

	public void setImage(Integer image) {
		this.image = image;
	}

	@Column(name = "content")
	public Integer getContent() {
		return this.content;
	}

	public void setContent(Integer content) {
		this.content = content;
	}

}
