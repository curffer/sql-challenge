--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-03-13 22:06:22 MDT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5 (class 2615 OID 16740)
-- Name: employees; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA employees;


ALTER SCHEMA employees OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16770)
-- Name: departments; Type: TABLE; Schema: employees; Owner: postgres
--

CREATE TABLE employees.departments (
    dept_no character(4) NOT NULL,
    dept_name character varying NOT NULL
);


ALTER TABLE employees.departments OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16815)
-- Name: dept_emp; Type: TABLE; Schema: employees; Owner: postgres
--

CREATE TABLE employees.dept_emp (
    emp_no integer NOT NULL,
    dept_no character(4) NOT NULL
);


ALTER TABLE employees.dept_emp OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16805)
-- Name: dept_manager; Type: TABLE; Schema: employees; Owner: postgres
--

CREATE TABLE employees.dept_manager (
    dept_no character(4) NOT NULL,
    emp_no integer NOT NULL
);


ALTER TABLE employees.dept_manager OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16777)
-- Name: employees; Type: TABLE; Schema: employees; Owner: postgres
--

CREATE TABLE employees.employees (
    emp_no integer NOT NULL,
    emp_title_id character(5) NOT NULL,
    birth_date date NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    sex character(1) NOT NULL,
    hire_date date NOT NULL
);


ALTER TABLE employees.employees OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16760)
-- Name: salaries; Type: TABLE; Schema: employees; Owner: postgres
--

CREATE TABLE employees.salaries (
    emp_no integer NOT NULL,
    salary integer NOT NULL
);


ALTER TABLE employees.salaries OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16741)
-- Name: titles; Type: TABLE; Schema: employees; Owner: postgres
--

CREATE TABLE employees.titles (
    title_id character(5) NOT NULL,
    title character varying NOT NULL
);


ALTER TABLE employees.titles OWNER TO postgres;

--
-- TOC entry 3463 (class 2606 OID 16776)
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: employees; Owner: postgres
--

ALTER TABLE ONLY employees.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);


--
-- TOC entry 3469 (class 2606 OID 16819)
-- Name: dept_emp dept_emp_pkey; Type: CONSTRAINT; Schema: employees; Owner: postgres
--

ALTER TABLE ONLY employees.dept_emp
    ADD CONSTRAINT dept_emp_pkey PRIMARY KEY (emp_no, dept_no);


--
-- TOC entry 3467 (class 2606 OID 16809)
-- Name: dept_manager dept_manager_pkey; Type: CONSTRAINT; Schema: employees; Owner: postgres
--

ALTER TABLE ONLY employees.dept_manager
    ADD CONSTRAINT dept_manager_pkey PRIMARY KEY (dept_no, emp_no);


--
-- TOC entry 3465 (class 2606 OID 16783)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: employees; Owner: postgres
--

ALTER TABLE ONLY employees.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_no);


--
-- TOC entry 3461 (class 2606 OID 16764)
-- Name: salaries salaries_pkey; Type: CONSTRAINT; Schema: employees; Owner: postgres
--

ALTER TABLE ONLY employees.salaries
    ADD CONSTRAINT salaries_pkey PRIMARY KEY (emp_no);


--
-- TOC entry 3459 (class 2606 OID 16747)
-- Name: titles titles_pkey; Type: CONSTRAINT; Schema: employees; Owner: postgres
--

ALTER TABLE ONLY employees.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (title_id);


--
-- TOC entry 3472 (class 2606 OID 16820)
-- Name: dept_emp dept_emp_dept_no_fkey; Type: FK CONSTRAINT; Schema: employees; Owner: postgres
--

ALTER TABLE ONLY employees.dept_emp
    ADD CONSTRAINT dept_emp_dept_no_fkey FOREIGN KEY (dept_no) REFERENCES employees.departments(dept_no);


--
-- TOC entry 3471 (class 2606 OID 16810)
-- Name: dept_manager dept_manager; Type: FK CONSTRAINT; Schema: employees; Owner: postgres
--

ALTER TABLE ONLY employees.dept_manager
    ADD CONSTRAINT dept_manager FOREIGN KEY (emp_no) REFERENCES employees.employees(emp_no) NOT VALID;


--
-- TOC entry 3470 (class 2606 OID 16784)
-- Name: employees employees_emp_title_id_fkey; Type: FK CONSTRAINT; Schema: employees; Owner: postgres
--

ALTER TABLE ONLY employees.employees
    ADD CONSTRAINT employees_emp_title_id_fkey FOREIGN KEY (emp_title_id) REFERENCES employees.titles(title_id);


-- Completed on 2023-03-13 22:06:23 MDT

--
-- PostgreSQL database dump complete
--

