package entitis;
// Generated Jul 24, 2019 11:13:14 PM by Hibernate Tools 5.1.7.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * StoreType generated by hbm2java
 */
@Entity
@Table(name = "store_type", catalog = "salesystem")
public class StoreType implements java.io.Serializable {

	private Integer id;
	private String name;
	private Set<Store> stores = new HashSet<Store>(0);

	public StoreType() {
	}

	public StoreType(String name, Set<Store> stores) {
		this.name = name;
		this.stores = stores;
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

	@Column(name = "name", length = 250)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "storeType")
	public Set<Store> getStores() {
		return this.stores;
	}

	public void setStores(Set<Store> stores) {
		this.stores = stores;
	}

}
