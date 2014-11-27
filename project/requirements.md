# Requirements Certification Body

## Use Case: Pay invoice
* **Id**: uc-pay-invoice
* **Actor**: Applicant, Certification Body
* **Description**: The Applicant pays the invoice which he received after applying for an exam
* **Preconditions**:
    * The Applicant has received an invoice
    * The invoice has not been paid yet
* **Postconditions**:
    * The Applicant received a confirmation
* **Normal Course of Events**: The Applicant pays the invoice by bank transfer using a payment id. The system checks for new payments every hour and notifies the Certification Body when a new payment arrived. The Certification Body then accepts the payment and the system sends a confirmation mail.
* **Alternative Courses**:
* **Exceptions**:
    * The Applicant uses a wrong payment id
    * The Applicant pays too little/too much
* **Assumptions**:
    * There is an API to check the Certification Body's incoming payments
    * The Ceritifaction Body has a bank account
    * The majority of Applicants are able to do a bank transfer
* **Related to**:
    * uc-apply
* **Priority**: Medium
* **Notes**:

## Use Case: Apply
* **Id**: uc-apply
* **Actor**: Applicant
* **Description**: The Applicant uses the the system to apply for a certification exam date
* **Preconditions**:
* **Postconditions**:
    * The Applicant received a confirmation
    * The Applicant received an invoice
    * The Applicant is enlisted as Candidate for the exam
* **Normal Course of Events**: The Applicant uses the website to apply for a foundation level certification exam. When applying he enters his personal information and his email address and his so he can be contacted in case the exam is rescheduled and the invoice and confirmation can be sent to his email account. After finishing the registration he receives a confirmation and invoice via email.
* **Alternative Courses**:
    * The Applicant chooses a discount
    * The Applicant registers for an advanced level course and needs to supply additional documents to prove that he is qualified to take it
* **Exceptions**:
    * The email fails to be delivered
    * The Applicants email account expires/is not accessible any more
* **Assumptions**:
* **Related to**:
* **Priority**: High
* **Notes**:
    * Should we require the Candidate to register so he can view the exam dates he has registered himself for and it's easier to assign himself to another exam?
    * What about mail delivery failures?  What about wrongly entered emails? What if the Applicant loses the invoice and confirmation files? I think the system should also allow the user to look up the status in case of delivery failure and let him download the sent documents
    * A good idea would be to send a code by email to the Applicant that he has to enter to complete the application. That way you can verify that his email has been entered properly
    * There could be a feature that offers to resend all documents to an email

## Use Case: Verify certificate
* **Id**: uc-verify-cert
* **Actor**: Candidate
* **Description**: The Candidate can verify his certificate by opening the link from the QR code on the certificate in the browser
* **Preconditions**:
    * The Candidate has received a certificate with a QR code
* **Postconditions**:
* **Normal Course of Events**:
* **Alternative Courses**:
* **Exceptions**:
     * The certificate has been revoked
     * The server can not be reached
* **Assumptions**:
* **Related to**:
    * uc-evaluate-exam
* **Priority**: Medium
* **Notes**:
    * There should also be a manual way to verify it, for instance by calling the Certification Body in case of internet or server outages

## Use Case: Take exam
* **Id**: uc-take-exam
* **Actor**: Candidate, Invigilator
* **Description**: The Candidate takes the exam
* **Preconditions**:
    * The tablets have been prepared for the exam
    * If the Candidate used the website to register for the exam, he has paid the fee
* **Postconditions**:
* **Normal Course of Events**: The invigilator decrypts the exam files using a QR code, then gives the Candidate the tablet. The Candidate enters his name on the tablet and starts the exam at a given time. After the exam is finished the invigilator transmits the exam files to the system
* **Alternative Courses**:
* **Exceptions**:
    * The Candidate is unable to finish the exam
    * The Candidate does not provide enough or wrong information (e.g. no email or typo)
* **Assumptions**:
* **Related to**:
    * uc-prepare-exam
* **Priority**: High
* **Notes**:
    * If the Candidate is already registered, do we require less information (like only having to enter his mail instead of entering all of his data)?


## Use Case: Publish scheduled examinations
* **Id**: uc-publish-exams
* **Actor**: Certification Body
* **Description**: The Certification Body publishes scheduled exams on the homepage so Applicants can sign up for them. Date, Place and Time are included in the publication
* **Preconditions**:
    * There are unpublished exams
* **Postconditions**:
* **Normal Course of Events**:
* **Alternative Courses**:
* **Exceptions**:
* **Assumptions**:
* **Related to**:
    * uc-schedule-exam
* **Priority**: High
* **Notes**:
    * There should be some notification system for new exam dates so people can subscribe to this

## Use Case: Schedule exam
* **Id**: uc-schedule-exam
* **Actor**: Certification Body
* **Description**: The Certification Body creates a new exam with a  title, location, date and if given a trainer
* **Preconditions**:
    * The same exam with the same title, date and location and trainer does not exist already
* **Postconditions**:
    * A QR code is generated
* **Normal Course of Events**: The Certification Body decides to create an exam or after a Trainer Organization contated them by entering the title, location and date
* **Alternative Courses**:
* **Exceptions**:
* **Assumptions**:
* **Related to**:
    * uc-publish-exams
* **Priority**: High
* **Notes**:

## Use Case: Reporting
* **Id**: uc-reporting
* **Actor**: Certification Body, Scheme Owner
* **Description**:  The Certification Body reports the results to the Scheme Owner (e.g.: OMG/IREB)
* **Preconditions**:
* **Postconditions**:
* **Normal Course of Events**: Every month/quarter an anonymous report will be sent to the scheme owner: how many tests, how many Candidates, statistics about answered questions and if the Candidates received a discount. The license fee to the scheme is calculated from the exams and transferred to the scheme owner
* **Alternative Courses**:
* **Exceptions**:
    * The payment fails
* **Assumptions**:
* **Related to**:
* **Priority**: High
* **Notes**:
    * There are also reports if no exam took place

## Use Case: Evaluate exam
* **Id**: uc-evaluate-exam
* **Actor**: Certification Body
* **Description**: The Certification Body evaluates an exam
* **Preconditions**:
    * Files have been committed to the server
* **Postconditions**:
    * The Candidate has received a result
    * The certificates are printed
    * The envelopes are labeled
* **Normal Course of Events**: The Certification Body starts the evaluation on the server. The server calculates the exam result, sends the result mail to each Candidate. Afterwards the certificates are printed, envelopes are labeled. The Certification Body then proceeds to send the Certificates by mail
* **Alternative Courses**:
     * If a trainer requested the exam, he receives a trainer feedback after all evaluations have finished
* **Exceptions**:
    * The exam files are corrupt
* **Assumptions**:
* **Related to**:
    * uc-take-exam
* **Priority**: High
* **Notes**:
    * Should the Candidates also receive a digital copy by email?

## Use case: Update exam questions
* **Id**: uc-update-questions
* **Actor**: Certification Body
* **Description**: The Certification Body updates the questions for an exam type
* **Preconditions**:
    * There are no duplicate questions in case a new question is added
* **Postconditions**:
    * The files are updated on the server
* **Normal Course of Events**: The Certification Body removes/adds questions and solutions to a certain type of exam
* **Alternative Courses**:
     * If an exam type does not already exist, the Certification Body has to create a new type
* **Exceptions**:
* **Assumptions**:
* **Related to**:
    * uc-prepare-exam
* **Priority**: Medium
* **Notes**:

## Use case: Prepare tablets
* **Id**: uc-prepare-exam
* **Actor**: Certification Body
* **Description**: The Certification Body prepares the tablets for the exam
* **Preconditions**:
* **Postconditions**:
    * The tablets are prepared for the exam and confirmed to be working
* **Normal Course of Events**: The Certification Body loads the encrypted questions onto the tablet devices and checks if they function properly
* **Exceptions**:
    * A tablet has a malfunction
* **Assumptions**:
* **Related to**:
* **Priority**: High
* **Notes**:
    * There should be an easy way to verify that the device is working and prepared properly, maybe an automated test that runs the exam on the tablet

## Use case: Handle complaints
* **Id**: uc-complaints
* **Actor**: Certification Body, Candidate
* **Description**: The Candidate can file a complaint for an exam
* **Preconditions**:
    * The Candidate has taken the exam in question
    * The exam has been evaluated
* **Postconditions**:
    * The Candidate received a confirmation
    * The Certification Body is notified of the complaint
* **Normal Course of Events**: The Candidate can file a complaint for an exam on the website and receives a confirmation. The Certification Body is notified of the complaint and contacts the Candidate
* **Exceptions**:
    * The Candidate provides wrong credentials
* **Assumptions**:
* **Related to**:
    * uc-evaluate-exam
* **Priority**: Medium
* **Notes**:


## Use case: Manage applicants
* **Id**: uc-manage-applicants
* **Actor**: Certification Body
* **Description**: The Certification body can CRUD the applicants
* **Preconditions**:
* **Postconditions**:
* **Normal Course of Events**: The Certification Body can update the applicants information to react to email and possible family name changes.
* **Exceptions**:
* **Assumptions**:
* **Related to**:
* **Priority**: Low
* **Notes**:

## Use case: Manage certificates
* **Id**: uc-manage-applicants
* **Actor**: Certification Body
* **Description**: The Certification body can CRUD the certificates
* **Preconditions**:
* **Postconditions**:
* **Normal Course of Events**: The Certification Body can update the certificates, for instance to correct errors or to revoke the certificate
* **Exceptions**:
* **Assumptions**:
* **Related to**:
* **Priority**: Low
* **Notes**: