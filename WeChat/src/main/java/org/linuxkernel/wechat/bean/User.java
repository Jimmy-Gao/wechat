package org.linuxkernel.wechat.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User implements Serializable {
   private static final long serialVersionUID = 2612236846719842151L;

   @Id
   @Column(name = "id")
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private int id;
   @Column(name = "name")
   private String name;
   @Column(name = "password")
   private String password;
   @Column(name = "tel")
   private String tel;
   @Column(name = "address")
   private String address;

   public int getId() {
      return id;
   }

   public void setId(int id) {
      this.id = id;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getPassword() {
      return password;
   }

   public void setPassword(String password) {
      this.password = password;
   }

   public String getTel() {
      return tel;
   }

   public void setTel(String tel) {
      this.tel = tel;
   }

   public String getAddress() {
      return address;
   }

   public void setAddress(String address) {
      this.address = address;
   }


}
