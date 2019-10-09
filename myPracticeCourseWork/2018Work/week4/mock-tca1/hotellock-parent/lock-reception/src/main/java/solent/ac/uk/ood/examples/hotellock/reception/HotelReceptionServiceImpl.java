/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package solent.ac.uk.ood.examples.hotellock.reception;

import java.util.Date;
import java.util.Scanner;
import solent.ac.uk.ood.examples.hotellock.model.CardKey;
import solent.ac.uk.ood.examples.hotellock.model.HotelReceptionService;
import solent.ac.uk.ood.examples.hotellock.model.SecretKeyProvider;

/**
 *
 * @author cgallen
 */

public class HotelReceptionServiceImpl implements HotelReceptionService {

    private SecretKeyProvider secretKeyProvider;
    
    /**
     *
     */
    public void Main(){
        Scanner sDateIn = new Scanner(System.in);
        System.out.println("Please enter a start date: ");
        Date startDate = sDateIn.next();
        
        
        Scanner eDateIn = new Scanner(System.in);
        System.out.println("Please enter an end date: ");
        Date endDate = eDateIn.nextLine();
        
        
        Scanner rmNoIn = new Scanner(System.in);
        System.out.println("Please enter an end date: ");
        String roomNumber = rmNoIn.nextLine();
        
        createCardCode(roomNumber,startDate,endDate);
        
    }
    
    @Override
    public String createCardCode(String roomNumber, Date startDate, Date endDate) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        
    }

    @Override
    public CardKey readCard(String cardCode) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setSecretKeyProvider(SecretKeyProvider secretKeyProvider) {
        this.secretKeyProvider= secretKeyProvider;
    }
    
}

