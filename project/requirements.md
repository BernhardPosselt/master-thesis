# Requirements Certible

## Use Case: Apply
* **Id**: uc-apply-for-exam
* **Actor**: Applicant
* **Description**: The applicant uses the the system to apply for a certain certification exam
* **Preconditions**: 
    * The applicant is not already enlisted for the exam
* **Postconditions**: 
    * The applicant received a confirmation
    * The applicant received an invoice
    * The applicant is enlisted as candidate for the exam
* **Normal Course of Events**: The applicant uses the website to apply for a certification exam. When applying he enters his personal information and his email address and his so he can be contacted in case the exam is rescheduled and the invoice and confirmation can be sent to his email account. After finishing the registration he receives a confirmation and invoice via email. If he chooses to pay the invoice in advance, he receives a notification for it.
* **Alternative Courses**: 
    * The applicant does not choose to pay the invoice. If he does not show up at the exam date and the exam is over, the applicant is removed from the applicants list
    * The applicant registers for an advanced level course and needs to supply additional documents to prove that he is qualified to take it
* **Exceptions**:
    * The email fails to be delivered
* **Assumptions**:
* **Related to**:
* **Priority**: High
* **Notes**: 
    * What about advanced level tests? Is he notified to supply/arrange those documents automatically or does Certible need to send an extra email
    * Should we require the candidate to register so he can view the exam dates he has registered himself for and it's easier to assign himself to another exam?
    * What about mail delivery failures?  What about wrongly entered emails? What if the applicant loses the invoice and confirmation files? I think the system should also allow the user to look up the status in case of delivery failure and let him download the sent documents


## Use Case: View test results
* **Id**: uc-view-test-results
* **Actor**: Candidate
* **Description**: The candidate views the test results of an exam on the website
* **Preconditions**:
    * The candidate has taken an exam
* **Postconditions**: 
* **Normal Course of Events**: 
* **Alternative Courses**:
* **Exceptions**:
* **Assumptions**: 
    * The candidate has registered on the website
* **Related to**:
    * uc-take-exam
* **Priority**: Medium
* **Notes**: 
     * Is he notified exactly afterwards?

## Use Case: Take exam
* **Id**: uc-take-exam
* **Actor**: Candidate, Invigilator
* **Description**: The candidate takes the exam
* **Preconditions**:
* **Postconditions**: 
* **Normal Course of Events**: The candidate enters his name on the tablet and takes the exam. To start the exam the invigilator scans a QR code that he received from the system using the tablet to decrypt the exam files. After the exam is finished he transmits the exam files and tells the candidate the test results
* **Alternative Courses**:
* **Exceptions**:
    * The candidate is unable to finish the exam
    * The candidate does not have an email address
* **Assumptions**:
* **Related to**:
    * uc-view-test-results
    * uc-transfer-exam-files
* **Priority**: High
* **Notes**: 
    * What about emergencies and medical conditions?
    * Where and when are the exams evaluated? After or before the transfer?
    * If the candidate is already registered, do we require less information (like click confirm button instead of entering his data)
    * If the candidate is not registered how do we connect his information (e.g. view test results) to the exam he took

## Use Case: Transfer exam files
* **Id**: uc-transfer-exam-files
* **Actor**: Invigilator
* **Description**: The invigilator transfers the files to the system after the exam is finished
* **Preconditions**:
    * Exam is finished
* **Postconditions**: 
* **Normal Course of Events**:  After the exam is finished, the invigilator uses the tablets to transfer the results using a raspberry pie which connects to the system using an encrypted OpenVPN tunnel
* **Alternative Courses**:
* **Exceptions**:
    * The connection fails
* **Assumptions**:
* **Related to**: uc-take-exam
* **Priority**: High
* **Notes**: 
    * Is each tablet used individually to to transfer the files?
    * What happens if the connection fails to be established?

## Use Case: Publish scheduled examinations
* **Id**: uc-publish-examinations
* **Actor**: Certible
* **Description**: Certible publishes scheduled exams on the homepage so applicants can sign up for them
* **Preconditions**:
    * An exam has been created
* **Postconditions**: 
* **Normal Course of Events**:
* **Alternative Courses**:
* **Exceptions**:
* **Assumptions**:
* **Related to**: uc-create-exam
* **Priority**: High
* **Notes**: 

## Use Case: Create exam
* **Id**: uc-create-exam
* **Actor**: Certible
* **Description**: Certible creates a new exam with a title, location and date
* **Preconditions**:
    * The same exam with the same title, date and location does not exist already
* **Postconditions**: 
* **Normal Course of Events**: Certible decides to create an exam or after a Trainer Organization contated them by entering the title, location and date
* **Alternative Courses**:
* **Exceptions**:
* **Assumptions**:
* **Related to**:
* **Priority**: High
* **Notes**: 
    * How and when are exam questions created?

## Use Case: Reporting
* **Id**: uc-reporting
* **Actor**: Certible, Scheme Owner
* **Description**:  Certible reports the results to the Scheme Owner (e.g.: OMG/IREB)
* **Preconditions**:
    * An exam has taken place and it has been evaluated
* **Postconditions**: 
* **Normal Course of Events**:
* **Alternative Courses**:
* **Exceptions**:
* **Assumptions**:
* **Related to**:
* **Priority**: High
* **Notes**: 
 * Payment?

## Use Case: Evaluate exam
* **Id**: uc-evaluate-exam
* **Actor**: Certible
* **Description**: Certible evaluates an exam
* **Preconditions**:
* **Postconditions**: 
* **Normal Course of Events**: 
* **Alternative Courses**:
* **Exceptions**:
* **Assumptions**:
* **Related to**:
    * uc-take-exam
    * uc-transfer-exam-files
* **Priority**: High
* **Notes**: 
    * Where does the exam evaluation happen? Server calculates score, Certible approves?

## Use Case: Create certificates
* **Id**: uc-create-certificates
* **Actor**: Certible
* **Description**: Certible creates the certificates for each successful candidate's exam by printing them
* **Preconditions**:
    * The user has paid the invoice
* **Postconditions**: 
* **Normal Course of Events**:
* **Alternative Courses**:
* **Exceptions**:
* **Assumptions**:
* **Related to**:
* **Priority**: High
* **Notes**: 