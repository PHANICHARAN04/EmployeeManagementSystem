// JavaScript code for newrecruits.html

// Function to handle terminate button click
function handleTerminateButtonClick() {
    // Get the corresponding employee row
    const employeeRow = this.closest('tr');

    // Remove the employee from the table
    employeeRow.remove();
}

// Function to handle promote button click
function handlePromoteButtonClick() {
    // TODO: Add your logic for promoting an employee
    // You can perform any necessary actions here, such as updating the employee's position or department.
}

// Function to handle demote button click
function handleDemoteButtonClick() {
    // TODO: Add your logic for demoting an employee
    // You can perform any necessary actions here, such as updating the employee's position or department.
}

// Function to handle contact button click
function handleContactButtonClick() {
    // TODO: Add your logic for contacting an employee
    // You can implement any desired communication method here, such as sending an email or making a phone call.
}

// Attach event listeners to the buttons
const terminateButtons = document.querySelectorAll('.terminate');
terminateButtons.forEach(button => button.addEventListener('click', handleTerminateButtonClick));

const promoteButtons = document.querySelectorAll('.promote');
promoteButtons.forEach(button => button.addEventListener('click', handlePromoteButtonClick));

const demoteButtons = document.querySelectorAll('.demote');
demoteButtons.forEach(button => button.addEventListener('click', handleDemoteButtonClick));

const contactButtons = document.querySelectorAll('.contact');
contactButtons.forEach(button => button.addEventListener('click', handleContactButtonClick));
