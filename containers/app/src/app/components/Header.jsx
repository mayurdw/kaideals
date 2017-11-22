import React, { Component } from 'react';

import {
    Navbar,
    Button,
    Nav,
    NavItem,
    PageHeader,
    Grid,
    Row,
    Col
} from 'react-bootstrap';

class Header extends Component {
    render() {
        return (
        <div>
            <Navbar inverse>
                <Navbar.Header>
                    <Navbar.Brand>
                        Kai Deals
                    </Navbar.Brand>
                    <Navbar.Toggle />
                </Navbar.Header>
                <Navbar.Collapse>
                    <Nav pullRight>
                        <NavItem eventKey={1} href="/login">Dealer Login</NavItem>
                    </Nav>
                    <Nav pullRight>
                        <NavItem eventKey={2} href="/register">Register</NavItem>
                    </Nav>
                </Navbar.Collapse>
            </Navbar>

            <Grid>
                <Row>
                    <Col lg={3} >
                        <img src="/img/food.svg" className="app-logo" alt="logo" />
                    </Col>
                    <Col lg={9} >
                        <h1>FIND FLASH DEALS <br /> FOR KAI NEAR YOU</h1>
                    </Col>
                </Row>
                <hr />
            </Grid>
        </div>
        );
    }
}

export default Header;

