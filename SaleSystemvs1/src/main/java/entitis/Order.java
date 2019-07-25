package entitis;
// Generated Jul 24, 2019 11:13:14 PM by Hibernate Tools 5.1.7.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Order generated by hbm2java
 */
@Entity
@Table(name = "order", catalog = "salesystem")
public class Order implements java.io.Serializable {

	private Integer id;
	private Coppon coppon;
	private Employee employee;
	private InformationUser informationUser;
	private Ship ship;
	private Store store;
	private Date dateOrder;
	private long totalPrice;
	private boolean status;
	private int pay;
	private Set<OrderDetail> orderDetails = new HashSet<OrderDetail>(0);
	private Set<Payment> payments = new HashSet<Payment>(0);

	public Order() {
	}

	public Order(Coppon coppon, Employee employee, InformationUser informationUser, Ship ship, Store store,
			Date dateOrder, long totalPrice, boolean status, int pay) {
		this.coppon = coppon;
		this.employee = employee;
		this.informationUser = informationUser;
		this.ship = ship;
		this.store = store;
		this.dateOrder = dateOrder;
		this.totalPrice = totalPrice;
		this.status = status;
		this.pay = pay;
	}

	public Order(Coppon coppon, Employee employee, InformationUser informationUser, Ship ship, Store store,
			Date dateOrder, long totalPrice, boolean status, int pay, Set<OrderDetail> orderDetails,
			Set<Payment> payments) {
		this.coppon = coppon;
		this.employee = employee;
		this.informationUser = informationUser;
		this.ship = ship;
		this.store = store;
		this.dateOrder = dateOrder;
		this.totalPrice = totalPrice;
		this.status = status;
		this.pay = pay;
		this.orderDetails = orderDetails;
		this.payments = payments;
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
	@JoinColumn(name = "id_coppon", nullable = false)
	public Coppon getCoppon() {
		return this.coppon;
	}

	public void setCoppon(Coppon coppon) {
		this.coppon = coppon;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_employee", nullable = false)
	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_infor_user", nullable = false)
	public InformationUser getInformationUser() {
		return this.informationUser;
	}

	public void setInformationUser(InformationUser informationUser) {
		this.informationUser = informationUser;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_ship", nullable = false)
	public Ship getShip() {
		return this.ship;
	}

	public void setShip(Ship ship) {
		this.ship = ship;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_shop", nullable = false)
	public Store getStore() {
		return this.store;
	}

	public void setStore(Store store) {
		this.store = store;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "date_order", nullable = false, length = 10)
	public Date getDateOrder() {
		return this.dateOrder;
	}

	public void setDateOrder(Date dateOrder) {
		this.dateOrder = dateOrder;
	}

	@Column(name = "total_price", nullable = false, precision = 10, scale = 0)
	public long getTotalPrice() {
		return this.totalPrice;
	}

	public void setTotalPrice(long totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@Column(name = "pay", nullable = false)
	public int getPay() {
		return this.pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "order")
	public Set<OrderDetail> getOrderDetails() {
		return this.orderDetails;
	}

	public void setOrderDetails(Set<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "order")
	public Set<Payment> getPayments() {
		return this.payments;
	}

	public void setPayments(Set<Payment> payments) {
		this.payments = payments;
	}

}