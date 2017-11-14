import React, { Component } from 'react';

import DealItem from './Deal_Item.jsx';

import {
    Grid,
    Row
} from 'react-bootstrap';

class DealContainer extends Component {

    constructor(props) {
        super(props);
        this.state = {
            deals: [
                {
                    id: 1,
                    dealer: "Lord of the Fries",
                    desc: "Large Fries",
                    usualPrice: 24.00,
                    salePrice: 12.00,
                    likes: 2,
                    dealEnd: 5400
                },
                {
                    id: 2,
                    dealer: "Muzza's Pies",
                    desc: "Pork Pie",
                    usualPrice: 35.00,
                    salePrice: 10.00,
                    likes: 70,
                    dealEnd: 3600
                }
            ],
            selectedDeal: null
        }
    }

    dealsList() {
        return ( 
            this.state.deals.map(deal => {
                return (
                    <DealItem
                        key={deal.id}
                        deal={deal} />
                );
            })
        );
    }

    render() {
        return (
            <Grid>
                <Row>
                    {this.dealsList()}
                </Row>
            </Grid>
        );
    }
}

export default DealContainer;