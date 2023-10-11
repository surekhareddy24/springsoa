import { LightningElement, track, wire } from 'lwc';

import Accountlist from '@salesforce/apex/AccountDataController.getAccountList';

const columns=[

{label: 'Account Name', fieldName: 'Name'},

{label: 'Account Industry', fieldName: 'Industry'},

{label: 'Account Description', fieldName: 'Description'},

];

 

export default class TestLWCTableExample extends LightningElement {

    @track error;

    @track columns = columns;

    @track accList;

    @wire (Accountlist) accList({error, data})

    {

        if(data)

        {

            this.accList = data;

        }

        else if(error)

        {

            this.error = error;

        }

    }

   

}