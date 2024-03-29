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
 * Banner generated by hbm2java
 */
@Entity
@Table(name = "banner", catalog = "salesystem")
public class Banner implements java.io.Serializable {

	private Integer id;
	private Account account;
	private String image;
	private String name;
	private String contenRows;

	public Banner() {
	}

	public Banner(Account account, String image, String name, String contenRows) {
		this.account = account;
		this.image = image;
		this.name = name;
		this.contenRows = contenRows;
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

	@Column(name = "image", nullable = false, length = 40)
	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Column(name = "name", nullable = false, length = 250)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "contenRows", nullable = false, length = 65535)
	public String getContenRows() {
		return this.contenRows;
	}

	public void setContenRows(String contenRows) {
		this.contenRows = contenRows;
	}

}
