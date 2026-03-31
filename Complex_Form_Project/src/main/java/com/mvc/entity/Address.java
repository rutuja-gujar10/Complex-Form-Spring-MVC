
package com.mvc.entity;

import javax.persistence.Embeddable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Embeddable
public class Address {

    private String address1;

    private String address2;

    private String city;

    private String state;

    private String country;

}
