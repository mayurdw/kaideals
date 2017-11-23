import React, {Component} from "react";
// import '../../../public/stylesheets/_registrationpage'


class RegistrationPage extends Component {



    handleSubmit(event) {
        alert('Registration submitted ' + this.state.value);
        event.preventDefault();
    }


    render() {

        return (
                <div className="form-div-center">
                    <form  onSubmit={this.handleSubmit}>
                            <label>
                                Restaurant Name:
                            <input type="text" name="restaurantName"  />
                            </label>
                        <label>
                            Email:
                            <input type="text" name="email"  />
                        </label>

                        <label>
                            Phone number:
                            <input type="text" name="phoneNumber"  />
                        </label>
                            <button type="submit" className="btn btn-lg  btn-primary" >Login</button>
                    </form>
            </div>
        );
    }
}

function validate(values) {
    const errors = {};
    if (!values.first) {
        errors.first = "First name is required";
    }
    if (!values.last) {
        errors.last = "Last name is required";
    }

    return errors;
}




export default RegistrationPage