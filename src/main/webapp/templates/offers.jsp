<!DOCTYPE html>
<html>
<head>
    <title>Job Offers</title>
    <link rel="stylesheet" href="offers.css">
</head>
<body>
    <script>
        const jobOffers = [
            {
                imgSrc: "../static/blog/react.jpg",
                jobTitle: "MERN",
                jobLink: "../formvalidations/watingilst.jsp",
                id:0
            },
            {
                imgSrc: "../static/blog/python.png",
                jobTitle: "Python FullStack",
                jobLink: "../formvalidations/watingilst.jsp",
                id:1
            },
            {
                imgSrc: "../static/blog/java.png",
                jobTitle: "Java FullStack",
                jobLink: "../formvalidations/watingilst.jsp",
                id:2
            },
            {
                imgSrc: "../static/blog/php.jpg",
                jobTitle: "php",
                jobLink: "../formvalidations/watingilst.jsp",
                id:3
            },
            {
                imgSrc: "../static/blog/js.jpg",
                jobTitle: "JavaScript",
                jobLink: "../formvalidations/watingilst.jsp",
                id:4
            },
            {
                imgSrc: "../static/blog/desktop.jpg",
                jobTitle: "Desktop Application Developer",
                jobLink: "../formvalidations/watingilst.jsp",
                id:5,
            },
            {
                imgSrc: "../static/blog/devops.jpg",
                jobTitle: "DevOps Engineer",
                jobLink: "../formvalidations/watingilst.jsp",
                id:6,
            },
            {
                imgSrc: "../static/blog/embedded.jpg",
                jobTitle: "Embedded Systems Developer",
                jobLink: "../formvalidations/watingilst.jsp",
                id:7,
            },
            {
                imgSrc: "../static/blog/software.jpg",
                jobTitle: "Systems Software Developer",
                jobLink: "../formvalidations/watingilst.jsp",
                id:8,
            },
            {
                imgSrc: "../static/blog/dba.jpg",
                jobTitle: "Database Administrator",
                jobLink: "../formvalidations/watingilst.jsp",
                id:9,
            },
            {
                imgSrc: "../static/blog/isa.jpg",
                jobTitle: "Information Security Analyst",
                jobLink: "../formvalidations/watingilst.jsp",
                id:10,
            },
            {
                imgSrc: "../static/blog/pt.jpg",
                jobTitle: "Penetration Tester",
                jobLink: "../formvalidations/watingilst.jsp",
                id:11,
            },
            {
                imgSrc: "../static/blog/sc.jpg",
                jobTitle: "Security Consultant",
                jobLink: "../formvalidations/watingilst.jsp",
                id:12,
            },
            {
                imgSrc: "../static/blog/ce.jpg",
                jobTitle: "Cybersecurity Engineer",
                jobLink: "../formvalidations/watingilst.jsp",
                id:13,
            },
            {
                imgSrc: "../static/blog/eh.jpg",
                jobTitle: "Ethical Hacker",
                jobLink: "../formvalidations/watingilst.jsp",
                id:14,
            }
        ];

        function generateJobCards(jobs) {
            const jobContainer = document.createElement('div');
            jobContainer.classList.add('job-offers-container');

            for (let i = 0; i < jobs.length; i++) {
                const job = jobs[i];

                const jobCard = document.createElement('div');
                jobCard.classList.add('job-card');

                const img = document.createElement('img');
                img.src = job.imgSrc;
                img.alt = job.jobTitle;
                jobCard.appendChild(img);

                const h3 = document.createElement('h3');
                h3.textContent = job.jobTitle;
                jobCard.appendChild(h3);

                const p = document.createElement('p');
                jobCard.appendChild(p);

                const applyBtn = document.createElement('a');
                applyBtn.classList.add('apply-btn');
                applyBtn.href = job.jobLink;
                applyBtn.textContent = "Apply";
                jobCard.appendChild(applyBtn);

                jobContainer.appendChild(jobCard);
            }

            return jobContainer;

        }

        window.onload = function () {
            const webDevelopmentJobs = generateJobCards(jobOffers.slice(0, 5));
            const softwareDevelopmentJobs = generateJobCards(jobOffers.slice(5, 10));
            const dataSecurityJobs = generateJobCards(jobOffers.slice(10, 15));

            const webDevelopmentSection = document.createElement('div');
            webDevelopmentSection.innerHTML = "<h2>Web Development</h2>";
            webDevelopmentSection.appendChild(webDevelopmentJobs);
            document.body.appendChild(webDevelopmentSection);

            const softwareDevelopmentSection = document.createElement('div');
            softwareDevelopmentSection.innerHTML = "<h2>Software Development</h2>";
            softwareDevelopmentSection.appendChild(softwareDevelopmentJobs);
            document.body.appendChild(softwareDevelopmentSection);

            const dataSecuritySection = document.createElement('div');
            dataSecuritySection.innerHTML = "<h2>Data Security</h2>";
            dataSecuritySection.appendChild(dataSecurityJobs);
            document.body.appendChild(dataSecuritySection);
        };
    </script>

    <script src="offers.js"></script>

    <!-- Form tag with hidden input and submit button -->
    <form action="../formvalidations/watingilst.jsp" method="post" id="applyForm" style="display: none;">
        <input type="hidden" name="offer-id" id="offerIdInput">
        <button type="submit" id="applyButton">Apply</button>
    </form>
</body>
</html>
