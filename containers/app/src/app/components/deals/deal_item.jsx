import React from 'react';

import {
    Well,
    Thumbnail,
    Col,
    Button,
    Badge,
    Glyphicon
} from 'react-bootstrap';

const DealItem = ({ deal }) => {
    return (
        <Col md={3} sm={6} >
            <Well>
                <Thumbnail>
                    <img src="/img/logo.svg" className="app-logo" alt="logo" />
                    <h1>{deal.dealer}</h1>
                    <h3>{deal.desc}</h3>
                    <p>
                        Was ${deal.usualPrice}.00 now ${deal.salePrice}.00
                        <br />
                        <Glyphicon glyph="thumbs-up"/> <Badge>{deal.likes}</Badge>
                    </p>
                    <Button bsStyle="success">Ka Pai!</Button>
                </Thumbnail>
            </Well>
        </Col>
    );
};

export default DealItem;