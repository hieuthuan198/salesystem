package entitis;
// Generated Jul 24, 2019 11:13:14 PM by Hibernate Tools 5.1.7.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Ship generated by hbm2java
 */
@Entity
@Table(name = "ship", catalog = "salesystem")
public class Ship implements java.io.Serializable {

	private int id;
	private InformationUser informationUser;
	private Ship ship;
	private Date datecreate;
	private long price;
	private boolean status;
	private int idcoppon;
	private Set<Order> orders = new HashSet<Order>(0);
	private Set<Ship> ships = new HashSet<Ship>(0);

	public Ship() {
	}

	public Ship(int id, InformationUser informationUser, Ship ship, Date datecreate, long price, boolean status,
			int idcoppon) {
		this.id = id;
		this.informationUser = informationUser;
		this.ship = ship;
		this.datecreate = datecreate;
		this.price = price;
		this.status = status;
		this.idcoppon = idcoppon;
	}

	public Ship(int id, InformationUser informationUser, Ship ship, Date datecreate, long price, boolean status,
			int idcoppon, Set<Order> orders, Set<Ship> ships) {
		this.id = id;
		this.informationUser = informationUser;
		this.ship = ship;
		this.datecreate = datecreate;
		this.price = price;
		this.status = status;
		this.idcoppon = idcoppon;
		this.orders = orders;
		this.ships = ships;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
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

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_shiper", nullable = false)
	public Ship getShip() {
		return this.ship;
	}

	public void setShip(Ship ship) {
		this.ship = ship;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "datecreate", nullable = false, length = 10)
	public Date getDatecreate() {
		return this.datecreate;
	}

	public void setDatecreate(Date datecreate) {
		this.datecreate = datecreate;
	}

	@Column(name = "price", nullable = false, precision = 10, scale = 0)
	public long getPrice() {
		return this.price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@Column(name = "idcoppon", nullable = false)
	public int getIdcoppon() {
		return this.idcoppon;
	}

	public void setIdcoppon(int idcoppon) {
		this.idcoppon = idcoppon;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "ship")
	public Set<Order> getOrders() {
		return this.orders;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "ship")
	public Set<Ship> getShips() {
		return this.ships;
	}

	public void setShips(Set<Ship> ships) {
		this.ships = ships;
	}

}
