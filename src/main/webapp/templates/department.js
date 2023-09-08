// JavaScript code for department.html

// Function to handle form submission
function handleFormSubmit(event) {
    event.preventDefault();
  
    const departmentNameInput = document.getElementById("department-name");
    const departmentName = departmentNameInput.value.trim();
  
    if (departmentName !== "") {
      addDepartment(departmentName);
      departmentNameInput.value = "";
    }
  }
  
  // Function to add a new department to the list
  function addDepartment(departmentName) {
    const departmentsList = document.getElementById("departments");
  
    const li = document.createElement("li");
  
    const span = document.createElement("span");
    span.classList.add("department-name");
    span.textContent = departmentName;
  
    const removeButton = document.createElement("button");
    removeButton.classList.add("remove-button");
    removeButton.textContent = "Remove";
    removeButton.addEventListener("click", handleRemoveButtonClick);
  
    li.appendChild(span);
    li.appendChild(removeButton);
    departmentsList.appendChild(li);
  }
  
  // Function to handle remove button click
  function handleRemoveButtonClick() {
    const departmentItem = this.parentNode;
    const departmentName = departmentItem.querySelector(".department-name")
      .textContent.trim();
    const confirmation = confirm(
      `Are you sure you want to remove the department "${departmentName}"?`
    );
  
    if (confirmation) {
      const departmentsList = departmentItem.parentNode;
      departmentsList.removeChild(departmentItem);
    }
  }
  
  // Attach event listener to the form submission
  const departmentForm = document.getElementById("department-form");
  departmentForm.addEventListener("submit", handleFormSubmit);
  
  // Attach event listeners to remove buttons
  const removeButtons = document.querySelectorAll(".remove-button");
  removeButtons.forEach((button) =>
    button.addEventListener("click", handleRemoveButtonClick)
  );
  