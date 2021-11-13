//This project is aimed at developing a web-based and 
//central Recruitment Process System for the HR Group for a company.
// Some features of this system will be creating vacancies, 
//storing Applicants data, Interview process initiation, Scheduling Interviews,
// Storing Interview results for the applicant and finally Hiring of the applicant. 
//Reports may be required to be generated for the use of HR group.

var applicantdetails=[];

function Createvacancis(reactopening,flutteropening,dotnetopening){
    console.log("we are having vacancies in flutter : "+flutteropening,"dotnet : "+dotnetopening,"react : "+reactopening);
}

function addaplicants(id,name,city,tech){
        applicantdetails.push({applicationid:id,Name:name,city:city,pos:tech});
}

function selected_candidte_in_firstround(application_id){
    for(i=0;i<applicantdetails.length;i++)
    if(i==application_id){
        console.log(applicantdetails[i]);
    }
}

function interviewsedule(applicationid,time){
    for(i=0;i<applicantdetails.length;i++)
    if(i==applicationid)
    applicantdetails[i].interviewtime=time
    console.log("interview timings");
    console.log(applicantdetails[applicationid]);
}

function finalselected(id){
    console.log("Selected candidate is "+applicantdetails[id].Name);
}


console.log("creating vacancies");
Createvacancis(5,6,12);

console.log("candidate registration");
addaplicants(1,"kuldip","talod","flutter");
addaplicants(2,"rutvik","modasa","dot net");
addaplicants(3,"hemansu","rajkot","flutter");
addaplicants(4,"hiren","jamnagar","flutter");
addaplicants(5,"ravi","ahm","flutter");


console.log("all aplicats list");
console.log(applicantdetails);


console.log("interview process");
console.log("1.Aptitude test at 10 am");
console.log("2.technical round for candidate who cleared first round.will inform soon");


console.log("list of candidate who selected in first round");
selected_candidte_in_firstround(0);
selected_candidte_in_firstround(2);
selected_candidte_in_firstround(4);


console.log("seduling interviews");
interviewsedule(0,"20/10/2021 at 1 pm");
interviewsedule(2,"20/10/2021 at 3 pm");
interviewsedule(4,"20/10/2021 at 5 pm");

console.log("result");
finalselected(0);
finalselected(2); 
