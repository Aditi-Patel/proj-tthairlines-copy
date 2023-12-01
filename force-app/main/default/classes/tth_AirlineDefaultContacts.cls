public  class tth_AirlineDefaultContacts {
    
    
    public  void createTTHDefaultContacts() {
        
        //Contact
        List<Contact> lstCon=new List<Contact>();
        
        Contact c=new Contact();
        c.FirstName='Amir';
        c.LastName='Zainal';
        c.Phone='8795550223';
        c.MailingCity='Kuala Lumpur';
        c.MailingCountry='Malaysia';
        
        c.MailingPostalCode='58000 ';
        c.MailingStreet='56, Jalan Taman Seputeh 3';
        c.SDO_Cust360_CSAT__c=46;
        c.SDO_Cust360_Metric1__c='78';
        c.SDO_Cust360_Metric2__c='34';
        c.SDO_Cust360_Id__c='909876';
        c.Birthdate=date.parse('05/11/1985');
        c.Gender='Male';
        
        c.Email='jcarter@gmail.com';
        c.XDO_TTHAIR_App_Version__c='2.0';
        c.XDO_TTHAIR_Cust360_Engagement_Score__c=70;
        c.XDO_TTHAIR_Cust360_Purchase_Score__c=70;
        c.XDO_TTHAIR_Cust360_Metric3__c='45';
        c.XDO_TTHAIR_Cust360_Metric4__c='80';
        c.XDO_TTHAIR_Member_Tier__c='Gold';
        c.XDO_TTHAIR_Language__c='English';
        c.XDO_TTHAIR_Membership_Status__c='Active';
        c.XDO_TTHAIR_Preferred_Seat__c='Window';
        c.XDO_TTHAIR_Trip_Status__c='Pre Trip';
        c.SDO_Cust360_Contact_Picture_URL__c='https://tthairlines-231129-953-demo.file.force.com/servlet/servlet.ImageServer?id=015Hu000004e7xo&oid=00DHu000002h6fm&lastMod=1701409230000';
        c.XDO_TTHAIR_Card__c='https://tthairlines-231129-953-demo.file.force.com/servlet/servlet.ImageServer?id=015Hu000004e7xt&oid=00DHu000002h6fm&lastMod=1701409349000';
        
        //Contact 2
        
        Contact con=new Contact();
        con.FirstName='Nadia';
        con.LastName='Sabah';
        con.Phone='8997770289';
        con.MailingCity='Kuala Lumpur';
        con.MailingCountry='Malaysia';
        
        con.MailingPostalCode='50460 ';
        con.MailingStreet='Lot 568, Jalan Dewan Bahasa';
        con.SDO_Cust360_CSAT__c=23;
        con.SDO_Cust360_Metric1__c='88';
        con.SDO_Cust360_Metric2__c='56';
        con.SDO_Cust360_Id__c='809873';
        con.Birthdate=date.parse('05/11/1988');
        con.Gender='Female';
        
        con.Email='bdavis@gmail.com';
        con.XDO_TTHAIR_App_Version__c='2.4';
        con.XDO_TTHAIR_Cust360_Engagement_Score__c=90;
        con.XDO_TTHAIR_Cust360_Purchase_Score__c=60;
        con.XDO_TTHAIR_Cust360_Metric3__c='95';
        con.XDO_TTHAIR_Cust360_Metric4__c='50';
        con.XDO_TTHAIR_Member_Tier__c='Gold';
        con.XDO_TTHAIR_Language__c='English';
        con.XDO_TTHAIR_Membership_Status__c='InActive';
        con.XDO_TTHAIR_Preferred_Seat__c='Aisle';
        con.XDO_TTHAIR_Trip_Status__c='Completed';
        con.SDO_Cust360_Contact_Picture_URL__c='https://tthairlines-231129-953-demo.file.force.com/servlet/servlet.ImageServer?id=015Hu000004e7xy&oid=00DHu000002h6fm&lastMod=1701418314000';
        con.XDO_TTHAIR_Card__c='https://tthairlines-231129-953-demo.file.force.com/servlet/servlet.ImageServer?id=015Hu000004e7xt&oid=00DHu000002h6fm&lastMod=1701409349000';
        
        //Contact 3
        
        Contact cont=new Contact();
        cont.FirstName='Farah Binti';
        cont.LastName='Binti Hassan';
        cont.Phone='3445550197';
        cont.MailingCity='Kuala Lumpur';
        cont.MailingCountry='Malaysia';
        
        cont.MailingPostalCode='94105 ';
        cont.MailingStreet='Sri Impian Condo, Brickfields';
        cont.SDO_Cust360_CSAT__c=79.6;
        cont.SDO_Cust360_Metric1__c='80';
        cont.SDO_Cust360_Metric2__c='89';
        cont.SDO_Cust360_Id__c='7456739';
        cont.Birthdate=date.parse('09/10/1978');
        cont.Gender='Female';
        
        cont.Email='fb_hassan@gmail.com';
        cont.XDO_TTHAIR_App_Version__c='2.4';
        cont.XDO_TTHAIR_Cust360_Engagement_Score__c=70;
        cont.XDO_TTHAIR_Cust360_Purchase_Score__c=60;
        cont.XDO_TTHAIR_Cust360_Metric3__c='50';
        cont.XDO_TTHAIR_Cust360_Metric4__c='80';
        cont.XDO_TTHAIR_Member_Tier__c='Gold';
        cont.XDO_TTHAIR_Language__c='English';
        cont.XDO_TTHAIR_Membership_Status__c='Inactive';
        cont.XDO_TTHAIR_Preferred_Seat__c='Window';
        cont.XDO_TTHAIR_Trip_Status__c='Completed';
        cont.SDO_Cust360_Contact_Picture_URL__c='https://tthairlines-231129-953-demo.file.force.com/servlet/servlet.ImageServer?id=015Hu000004e7E0&oid=00DHu000002h6fm&lastMod=1701352365000';
        cont.XDO_TTHAIR_Card__c='https://tthairlines-231129-953-demo.file.force.com/servlet/servlet.ImageServer?id=015Hu000004e7Dv&oid=00DHu000002h6fm&lastMod=1701352256000';
        
        lstCon.add(c);
        lstCon.add(con);
        lstCon.add(cont);
        insert lstCon;
        
        //PNR
        
        List<xDO_TTHAIR_PNR__c> lstPNR=new List<xDO_TTHAIR_PNR__c>();
        
        //PNR For contact 1
        
        
        
        xDO_TTHAIR_PNR__c p= new xDO_TTHAIR_PNR__c ();
        p.Name ='KULCA';
        p.xDO_TTHAIR_Contact__c=c.Id;
        p.xDO_TTHAIR_PNR_Status__c='Confirmed';
        
        //PNR For contact 2
        
        xDO_TTHAIR_PNR__c pnr= new xDO_TTHAIR_PNR__c ();
        pnr.Name ='NYKUL';
        pnr.xDO_TTHAIR_Contact__c=con.Id;
        pnr.xDO_TTHAIR_PNR_Status__c='Confirmed';
        
        
        //PNR For contact 3
        
        xDO_TTHAIR_PNR__c tthpnr= new xDO_TTHAIR_PNR__c ();
        tthpnr.Name ='SYDKUL';
        tthpnr.xDO_TTHAIR_Contact__c=cont.Id;
        tthpnr.xDO_TTHAIR_PNR_Status__c='Confirmed';
        
        lstPNR.add(p);
        lstPNR.add(pnr);
        lstPNR.add(tthpnr);
        insert lstPNR;
        
        //Ticket
        
        List<xDO_TTHAIR_Ticket__c> lsttkt=new List<xDO_TTHAIR_Ticket__c>();
        
        //Ticket for contact 1
        
        xDO_TTHAIR_Ticket__c  t= new xDO_TTHAIR_Ticket__c  ();
        
        t.xDO_TTHAIR_Contact__c=c.Id;
        t.xDO_TTHAIR_PNR__c=p.Id;
        
        
        //Ticket  for contact 2
        
        xDO_TTHAIR_Ticket__c  tkt= new xDO_TTHAIR_Ticket__c  ();
        
        tkt.xDO_TTHAIR_Contact__c=con.Id;
        tkt.xDO_TTHAIR_PNR__c=pnr.Id;
        
        
        //Ticket for contact 3
        
        xDO_TTHAIR_Ticket__c  tthtkt= new xDO_TTHAIR_Ticket__c  ();
        
        tthtkt.xDO_TTHAIR_Contact__c=cont.Id;
        tthtkt.xDO_TTHAIR_PNR__c=tthpnr.Id;
        
        lsttkt.add(t);
        lsttkt.add(tkt);
        lsttkt.add(tthtkt);
        insert lsttkt;
        
        //FlightNumber
        
        List<xDO_TTHAIR_FlightNumber__c> lstno=new List<xDO_TTHAIR_FlightNumber__c>();
        
        //FlightNumber for contact 1
        
        xDO_TTHAIR_FlightNumber__c  n= new xDO_TTHAIR_FlightNumber__c   ();
        n.Name='FL-101030';
        n.xDO_TTHAIR_ARR_CITY__c='California';
        n.xDO_TTHAIR_DEP_CITY__c='Kuala Lumpur';
        n.xDO_TTHAIR_ARR_CODE__c='KUL';
        n.xDO_TTHAIR_DEP_CODE__c='CA';
        n.xDO_TTHAIR_Flight_Name__c='American Airlines';
        
        //FlightNumber for contact 2
        xDO_TTHAIR_FlightNumber__c  no= new xDO_TTHAIR_FlightNumber__c   ();
        no.Name='FL-301040';
        no.xDO_TTHAIR_ARR_CITY__c='NewYork';
        no.xDO_TTHAIR_DEP_CITY__c='Kuala Lumpur';
        no.xDO_TTHAIR_ARR_CODE__c='NY';
        no.xDO_TTHAIR_DEP_CODE__c='KUL';
        no.xDO_TTHAIR_Flight_Name__c='US Airways'; 
        
        //FlightNumber for contact 3
        xDO_TTHAIR_FlightNumber__c  fltno= new xDO_TTHAIR_FlightNumber__c   ();
        fltno.Name='FL-040101';
        fltno.xDO_TTHAIR_ARR_CITY__c='Kuala Lumpur';
        fltno.xDO_TTHAIR_DEP_CITY__c='Sydney';
        fltno.xDO_TTHAIR_ARR_CODE__c='KUL';
        fltno.xDO_TTHAIR_DEP_CODE__c='SYD';
        fltno.xDO_TTHAIR_Flight_Name__c='Malaysian Airline';
        
        
        
        lstno.add(n);
        lstno.add(no);
        lstno.add(fltno);
        insert lstno;
        
        
        
        //FlightSchedule
        
        List<xDO_TTHAIR_Flight__c> lstflt=new List<xDO_TTHAIR_Flight__c>();
        
        //FlightSchedule for contact 1
        
        xDO_TTHAIR_Flight__c  f= new xDO_TTHAIR_Flight__c   ();
        
        f.xDO_TTHAIR_Departure_City__c='Kuala Lumpur';
        f.xDO_TTHAIR_Arrival_City__c='California';
        f.xDO_TTHAIR_Flight__c=n.Id;
        f.xDO_TTHAIR_Departure_Time__c=Datetime.newInstance(2023, 05, 06, 8, 30, 2);
        f.xDO_TTHAIR_Arrival_Time__c=Datetime.newInstance(2023, 05, 07, 6, 30, 2);
        
        //FlightSchedule for contact 2
        
        xDO_TTHAIR_Flight__c  flt= new xDO_TTHAIR_Flight__c   ();
        
        flt.xDO_TTHAIR_Departure_City__c='Kuala Lumpur';
        flt.xDO_TTHAIR_Arrival_City__c='NewYork';
        flt.xDO_TTHAIR_Flight__c=no.Id;
        flt.xDO_TTHAIR_Departure_Time__c=Datetime.newInstance(2023, 07, 05, 8, 30, 2);
        flt.xDO_TTHAIR_Arrival_Time__c=Datetime.newInstance(2023, 07, 06, 6, 30, 2);
        
        //FlightSchedule for contact 3
        
        xDO_TTHAIR_Flight__c  fltsch= new xDO_TTHAIR_Flight__c   ();
        
        fltsch.xDO_TTHAIR_Departure_City__c='Sydney';
        fltsch.xDO_TTHAIR_Arrival_City__c='Kuala Lumpur';
        fltsch.xDO_TTHAIR_Flight__c=fltno.Id;
        fltsch.xDO_TTHAIR_Departure_Time__c=Datetime.newInstance(2023, 11, 03, 8, 40, 2);
        fltsch.xDO_TTHAIR_Arrival_Time__c=Datetime.newInstance(2023, 07, 06, 3, 10, 2);
        
        lstflt.add(f);
        lstflt.add(flt);
        lstflt.add(fltsch);
        insert lstflt;
        
        
        //Itinerary
        
        List<xDO_TTHAIR_Ininerary__c> lstit=new List<xDO_TTHAIR_Ininerary__c>();
        
        //Itinerary for contact 1
        
        xDO_TTHAIR_Ininerary__c   i= new xDO_TTHAIR_Ininerary__c   ();
        
        i.xDO_TTHAIR_Contact__c=c.Id;
        i.xDO_TTHAIR_Flight_Schedule__c =f.Id;
        i.xDO_TTHAIR_End_Date__c =date.parse('05/06/2023');
        i.xDO_TTHAIR_TicketStatus__c='Ticketed';
        i.xDO_TTHAIR_Start_Date__c =date.parse('05/07/2023');
        i.xDO_TTHAIR_PNR__c=p.Id;
        insert i;
        
        //Itinerary for contact 2
        
        xDO_TTHAIR_Ininerary__c   it= new xDO_TTHAIR_Ininerary__c   ();
        
        it.xDO_TTHAIR_Contact__c=con.Id;
        it.xDO_TTHAIR_Flight_Schedule__c =flt.Id;
        it.xDO_TTHAIR_End_Date__c =date.parse('07/05/2023');
        it.xDO_TTHAIR_TicketStatus__c='Ticketed';
        it.xDO_TTHAIR_Start_Date__c =date.parse('07/06/2023');
        it.xDO_TTHAIR_PNR__c=pnr.Id;
        
        //Itinerary for contact 3
        
        xDO_TTHAIR_Ininerary__c   tthit= new xDO_TTHAIR_Ininerary__c   ();
        
        tthit.xDO_TTHAIR_Contact__c=cont.Id;
        tthit.xDO_TTHAIR_Flight_Schedule__c =fltsch.Id;
        tthit.xDO_TTHAIR_End_Date__c =date.parse('11/11/2023');
        tthit.xDO_TTHAIR_TicketStatus__c='Ticketed';
        tthit.xDO_TTHAIR_Start_Date__c =date.parse('11/12/2023');
        tthit.xDO_TTHAIR_PNR__c=tthpnr.Id;
        
        
        
        lstit.add(i);
        lstit.add(it);
        lstit.add(tthit);
        
        insert lstit;
        
        
        
        
        
    }
    
}