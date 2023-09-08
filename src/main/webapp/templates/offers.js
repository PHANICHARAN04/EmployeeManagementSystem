document.addEventListener("DOMContentLoaded", function() {
    const applyButtons = document.getElementsByClassName("apply-btn");

    for (let i = 0; i < applyButtons.length; i++) {
        applyButtons[i].addEventListener("click", function() {
            const jobId = jobOffers[i].id;
            document.getElementById("offerIdInput").value = jobId;
            document.getElementById("applyForm").submit();
        });
    }
});
