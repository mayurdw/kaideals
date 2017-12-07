import React, { Component } from 'react';
// import fetch from 'axios';


// import DealItem from './deal_item.jsx';

import {
    Grid,
    Row,
    Jumbotron,
    Col,
    Thumbnail,
    Image
} from 'react-bootstrap';



const Contributor = ({ coder }) => {
    return (
        <Col md={3} sm={6}>
                    <Thumbnail>
                        <Image src={`https://github.com/${coder.github_username}.png?size=200`} className="app-logo" alt="derp" circle />
                        <h1>{coder.name}</h1>

                        <p style={{padding: "5px"}}>{coder.quote}</p>
                        <p style={{padding: "10px"}}>{coder.quote_author}</p>

                    </Thumbnail>

        </Col>
    );
};


class ContributorsContainer extends Component {

    constructor(props) {
        super(props);
        this.state = {
            coders: [
            ]
        }
    }

    componentDidMount() {
 

        // fetch('/api/coders').then((res)=>{
        //
        //     const contributors = res.data.coders;
        //
        //     let coders = this.state.coders;
        //
        //
        //     contributors.forEach(  async function (route_path, i, arr) {
        //
        //         const res =  await fetch(`/api/coders/${route_path}`);
        //
        //         let user = Object.assign(res.data, {id: i+1});
        //         coders.push(user)
        //
        //     });
        //
        //     this.setState({coders: coders});
        //
        //     console.log('after loop', this.state.coders)
        // })
    }


    codersList() {

        return ( 
            this.state.coders.map(coder => {
                return (
                    <Contributor
                        key={coder.id}
                        coder={coder} />
                );
            })
        );
    }

    render() {
        return (
            <div>
                <Jumbotron>
                    <h1>Hello, React!</h1>
                    <p>Say hello to the contributors working with React at Kaideals</p>
                </Jumbotron>
                <Grid>
                    <Row>
                        {/* ADD Your components here :) */}

                    </Row>
                </Grid>

                <Jumbotron>
                    <h1>Hello, Node!</h1>
                    <p>Say hello to the contributors working with Node at Kaideals </p>
                </Jumbotron>
                <Grid>
                    <Row>
                        {/* ADD Your components here :) */}
                        {/*{this.codersList()}*/}
                        {this.codersList.bind(this)}
                    </Row>
                </Grid>
            </div>

        );
    }
}

export default ContributorsContainer;
