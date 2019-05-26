package com.ishwarya.app.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;

@Entity
public class Role extends AbstractEntity
{

	

		private String name;

	    @ManyToMany(mappedBy = "roles")
	    private Set<User> users;
	    // this mapped by tells that the mapping is defined in the roles entity

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public Set<User> getUsers() {
			return users;
		}

		public void setUsers(Set<User> users) {
			this.users = users;
		}
	    
	  	@Override
		public String toString() {
			return "Role [name=" + name + ", users=" + users + "]";
		}
	    
}
