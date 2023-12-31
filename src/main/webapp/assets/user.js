class User {
    fullname
    
    email
    phoneNumber
    password

    validateFirstName(fullname) {
        const pattern = new RegExp(/^[a-z]+$/)
        return pattern.test(firstName)   // returns true/false
    }

    validateLastName(lastName) {
        const pattern = new RegExp(/^[a-z]+$/)
        return pattern.test(lastName)
    }

    validateEmail(email) {
        const pattern = new RegExp(/[a-z]/)
        return pattern.test(email)
    }

    validatePhoneNumber(phoneNumber) {
        const pattern = new RegExp(/[6-9]{1}[0-9]{9}/)
        return pattern.test(phoneNumber)
    }

    validatePassword(password) {
        const pattern = new RegExp(/[a-z]/)
        return pattern.test(password)
    }

}



const _firstName = "karthi"
const _lastName = "keyan"
const _email = "karthikn352004@gmail.com"
const _phoneNumber = "7010847986"
const _password = "karthikeyan"


const user = new User();
if (user.validateFirstName(_firstName)) {
    console.log("First Name is Valid")
} else {
    console.log("First Name is Not Valid")
}

if (user.validateLastName(_lastName)) {
    console.log("Last Name is Valid")
} else {
    console.log("Last Name is Not Valid")
}

if (user.validateEmail(_email)) {
    console.log("Email is Valid")
} else {
    console.log("Email is Not Valid")
}

if (user.validatePassword(_password)) {
    console.log("Password is Valid")
} else {
    console.log("Password is Not Valid")
}
