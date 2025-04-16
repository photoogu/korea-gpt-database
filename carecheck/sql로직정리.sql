use carecheck;

#환자 입력 테스트시 주민번호 변경 필요 (unique 설정)
insert into patient_tb
values (default, "이름입력", "250314-4011111", "010-1111-1111", now(), now());

#환자 테이블 조회
select * from patient_tb;

#접수입력 ( 환자번호(위 테스트 생성번호), 직원사번)
insert into adm_tb
values (default, 1, 2, "소아과", now(), now());

#접수 전체 조회
select * from adm_tb;

#접수 번호 기준으로 바이탈 입력.
#(접수번호, 바이탈 시행한 직원사번, 키, 몸무게, 열)
insert into patient_vital_tb
values (default, 1, 3, 100, 20, 38.5, now(), now());

#조회
select * from patient_vital_tb;

#환자대기명단
select 
	adm.patient_id,
    patient_name,
    date_format(adm.created_at, "%H:%i") as adm_time
from adm_tb as adm
left outer join patient_tb as pt
on pt.patient_id = adm.patient_id
order by adm_time;

#오더입력창에 보여질 환자정보
select 
	adm.patient_id,
    (select patient_name 
		from patient_tb pt
		where pt.patient_id = adm.patient_id) as patient_name,
    pvt.height,
    pvt.weight,
    pvt.fever
from adm_tb as adm
left outer join patient_vital_tb as pvt
on pvt.adm_id = adm.adm_id;

#진단입력
insert into diagnosis_tb
values (default, 1, 'j20', now(), now());

select * from diagnosis_tb;

#처방입력
insert into diagnosis_order_tb
values (default, 1, 'aa713', 1, 3, 5, default, default, now(), now());

select * from diagnosis_order_tb;

#세부내역 조회
select 
	distinct adm.adm_id,
    (select patient_name from patient_tb where patient_tb.patient_id = adm.patient_id) as patient_name,
    date_format(adm.created_at, "%Y-%m-%d") as adm_date,
    order_code,
    order_count,
    order_days,
    cal_order_pay
from adm_tb as adm
left outer join diagnosis_tb as dt
	on dt.adm_id = adm.adm_id
left outer join diagnosis_order_tb as dot
	on dot.adm_id = adm.adm_id
order by order_code;

#금액 조회(뷰테이블 이용)
select * from patient_total_pay;