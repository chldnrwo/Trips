let CDate = new Date();
let today = new Date();

function none(){
	document.querySelector("#showCalendar").innerHTML='',
	document.querySelector("#noneButton").style.display="none"
};



function buildCalendar(){
	document.querySelector("#noneButton").style.display="inline-block"
	document.querySelector("#showCalendar").innerHTML=''
const calendarFrame = 	
	`<div class="calendar">
		<div class="header">
			<button class="btn btn-outline-danger btn-sm" onclick="prevCal()">이전 달</button>
			<div class="title">
				<div class="yearTitle"></div>
				<div class="monthTitle"></div>
			</div>
			<button class="btn btn-outline-danger btn-sm" onclick="nextCal()">이후 달</button>
		</div>
		<div class="main">
			<div class="days">
				<div class="day">Sun</div>
				<div class="day">Mon</div>
				<div class="day">Tue</div>
				<div class="day">Wed</div>
				<div class="day">Thu</div>
				<div class="day">Fri</div>
				<div class="day">Sat</div>
			</div>
			<div class="dates"></div>
		</div>
		<hr width="50%">
	</div>`
document.querySelector("#showCalendar").insertAdjacentHTML("afterbegin", calendarFrame)
	let prevLast = new Date(CDate.getFullYear(), CDate.getMonth(), 0);
	let thisFirst = new Date(CDate.getFullYear(),CDate.getMonth(), 1);
	let thisLast = new Date(CDate.getFullYear(), CDate.getMonth()+1, 0);
	console.log(CDate.getMonth()+1);
	document.querySelector(".yearTitle").innerHTML = CDate.getFullYear()+"년 ";
	document.querySelector(".monthTitle").innerHTML = CDate.getMonth() + 1+"월";
	let dates = [];
		
	for(let i=1; i <= 6-thisLast.getDay(); i++){
		dates.unshift('');
	}// 이번달 달력에 보이는 다음달 날짜를 공백으로 처리'
	
	for(let i = thisLast.getDate(); i >= 1; i--){
		dates.push(i);
	}// 이번달의 날짜 표시
	
	if(thisFirst.getDay()!=0){
		for(let i=0; i < thisFirst.getDay(); i++){
			dates.push('');
		}
	} // 이번 달 달력에 보이는 전월의 날짜를 공백으로 처리
		
	const weekDiv = `<div class="week"></div>`

	for(let i=0; i < 35; i++){
		if(i == 0 || i % 7 == 0){
			document.querySelector(".dates").insertAdjacentHTML("afterbegin", weekDiv)	
		}
		if(today.getDate()==dates[i] &&today.getMonth()==CDate.getMonth()&&
		today.getFullYear()==CDate.getFullYear()){
			const todayDiv =`<div class="date today">${dates[i]}</div>`;
				document.querySelector(".week").insertAdjacentHTML("afterbegin", todayDiv);
			}else {
				//htmlDates += `<div class="date">${dates[i]}</div>`
				const dateDiv =`<div class="date">${dates[i]}</div>`;
				document.querySelector(".week").insertAdjacentHTML("afterbegin", dateDiv); 
			}
			
			//document.querySelector(".dates").innerHTML = htmlDates;
			
		
		}
	}

function prevCal(){
	CDate.setMonth(CDate.getMonth()-1);
	buildCalendar();
}

function nextCal(){
	CDate.setMonth(CDate.getMonth()+1);
	buildCalendar();
}	