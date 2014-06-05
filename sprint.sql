/*
 
  
*/


SET foreign_key_checks = 0; #turn off constraints temporarily

#since constraints cause problems, drop tables first, working backward
DROP TABLE IF EXISTS sprint_student_information; 
DROP TABLE IF EXISTS sprint_comany_gig;

#all tables must be of type InnoDB to do transactions, foreign key constraints
CREATE TABLE sprint_student_information(
StudentID INT UNSIGNED NOT NULL AUTO_INCREMENT,
FirstName VARCHAR(255),
LastName VARCHAR(255),
EmailAddress VARCHAR(255),
Phone INT,
Portfolio VARCHAR(255),
LinkedIn VARCHAR(255),
GitHub VARCHAR(255),
Facebook VARCHAR(255),
AreasInterest SET('Design','Front end Development','Back end Development/Server Side','Database','Networking/Hardware/IT') NULL,
JobTimeline SET('Part Time','Full Time','Temp','Permanant') NULL,
EducationLevel SET('Associate Degree','Certificate','In progress') NULL,
SkillHtml SET('HTML','CSS','Bootstrap','Zurb','Foundation','LESS') NULL,
SkillJavaScript SET('JavaScript','jQuery','Handlebars','AngularJS','JSON','Other') NULL,
SkillPHP SET('PHP','SQL','Laravel','CodeIgniter','Zend','CakePHP','Other') NULL,
SkillRuby SET('Ruby','Rails','Sinatra','Padrino','Other') NULL,
OtherLanguages SET('Java','C#','ASP.NET','Other') NULL,
LayOut SET('Adobe Illustrator','Adobe Photoshop','Adobe inDesign','Adobe Flash','Other') NULL,
PRIMARY KEY (StudentID)
)ENGINE=INNODB; 


INSERT INTO sprint_student_information values (NULL,'Anne','Jone','ajone@gmail.com',1234567890,'','','','','Design','Part Time','Certificate','CSS','JavaScript','PHP','Ruby','Java','Adobe Illustrator');

DROP TABLE IF EXISTS sprint_comany_gig;
CREATE TABLE sprint_company_gig(
CompanyGigID INT UNSIGNED NOT NULL AUTO_INCREMENT,
CompanyName VARCHAR(255),
WebSite VARCHAR(255) DEFAULT 'www.companysite.com',
ContactEmail VARCHAR(255),
CompanyPhone INT,
TypeofGig ENUM('Full Time','Part Time','Volunteer','Contract','Intership') NULL,
Location VARCHAR(255),
Category VARCHAR(255),
PositionTitle VARCHAR(255),
Description TEXT,
DateAdded DATETIME,
LastUpdated TIMESTAMP DEFAULT 0 ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (CompanyGigID)
)ENGINE=INNODB;


INSERT INTO sprint_company_gig values (NULL,'CodingTube','www.codingtube.com','codingtube@codingtube.com','1234567890','Volunteer','Greater Seattle Area','Designer','Entry Level Designer','',NOW(),NOW());



SET foreign_key_checks = 1; #turn foreign key check back on