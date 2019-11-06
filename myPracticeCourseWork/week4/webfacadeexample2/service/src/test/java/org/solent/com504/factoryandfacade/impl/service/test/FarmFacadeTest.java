/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.solent.com504.factoryandfacade.impl.service.test;

import org.junit.Test;
import static org.junit.Assert.*;
import org.solent.com504.factoryandfacade.impl.service.FarmFacadeImpl;

/**
 *
 * @author gallenc
 */
public class FarmFacadeTest {
    
    public FarmFacadeTest() {
    }
  @Test
    // TODO add test methods here.
    public void testFarmFacadeTest(){
        System.out.println("start of testFarmFacadeTest");
        FarmFacadeTest animalDao = new FarmFacadeImpl();
        AnimalTypeDao animalTypeDao = new AnimalTypeDaoImpl();

    }
    
    // The methods must be annotated with annotation @Test. For example:
    //
    // @Test
    // public void hello() {}
}
