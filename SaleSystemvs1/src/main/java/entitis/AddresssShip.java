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
 * AddresssShip generated by hbm2java
 */
@Entity
@Table(name = "addresss_ship", catalog = "salesystem")
public class AddresssShip implements java.io.Serializable {

	private Integer id;
	private InformationUser informationUser;
	private String name;
	private String address;
	private String phone;
	private Boolean status;

	public AddresssShip() {
	}

	public AddresssShip(InformationUser informationUser, String name) {
		this.informationUser = informationUser;
		this.name = name;
	}

	public AddresssShip(InformationUser informationUser, String name, String address, String phone, Boolean status) {
		this.informationUser = informationUser;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.status = status;
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
	@JoinColumn(name = "id_customer", nullable = false)
	public InformationUser getInformationUser() {
		return this.informationUser;
	}

	public void setInformationUser(InformationUser informationUser) {
		this.informationUser = informationUser;
	}

	@Column(name = "name", nullable = false, length = 250)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "address", length = 250)
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "phone", length = 15)
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "status")
	public Boolean getStatus() {
		return this.status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

}