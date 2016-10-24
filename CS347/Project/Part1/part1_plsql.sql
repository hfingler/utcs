-- Insert employee manager
DECLARE
 emp_list APEX_APPLICATION_GLOBAL.VC_ARR2;
 curr_id VARCHAR(50);

BEGIN
  IF(:P11_X IS NOT NULL) THEN
    emp_list := APEX_UTIL.STRING_TO_TABLE(:P11_X);
    curr_id := A_Person_seq.nextval - 1;
    FOR i IN 1..emp_list.COUNT LOOP
      UPDATE A_Person
      SET A_Person_person_id = curr_id
      WHERE person_id = emp_list(i);
    END LOOP;
  END IF;
END;

-- Insert spouse
DECLARE
 curr_id VARCHAR(50);

BEGIN
  IF(:P11_A_PERSON_PERSON_ID2 IS NOT NULL) THEN
    curr_id := A_Person_seq.nextval - 1;
    UPDATE A_Person
    SET A_Person_person_id2 = curr_id
    WHERE person_id = :P11_A_PERSON_PERSON_ID2;
  END IF;
END;

-- Insert superproject
DECLARE
 proj_list APEX_APPLICATION_GLOBAL.VC_ARR2;
 curr_id VARCHAR(50);

BEGIN
  IF(:P8_SUBPROJECTS IS NOT NULL) THEN
    proj_list := APEX_UTIL.STRING_TO_TABLE(:P8_SUBPROJECTS);
    curr_id := A_Project_seq.nextval - 1;
    FOR i IN 1..proj_list.COUNT LOOP
      UPDATE A_Project
      SET A_Project_project_no = curr_id
      WHERE project_no = proj_list(i);
    END LOOP;
  END IF;
END;

-- Insert project manager
DECLARE
 proj_list APEX_APPLICATION_GLOBAL.VC_ARR2;
 curr_id VARCHAR(50);

BEGIN
  IF(:P11_PROJECTS IS NOT NULL) THEN
    proj_list := APEX_UTIL.STRING_TO_TABLE(:P11_PROJECTS);
    curr_id := A_Person_seq.nextval - 1;
    FOR i IN 1..proj_list.COUNT LOOP
      UPDATE A_Project
      SET A_Person_person_id = curr_id
      WHERE project_no = proj_list(i);
    END LOOP;
  END IF;
END;

-- Insert department project
DECLARE
 proj_list APEX_APPLICATION_GLOBAL.VC_ARR2;
 curr_id VARCHAR(50);

BEGIN
  IF(:P14_PROJECTS IS NOT NULL) THEN
    proj_list := APEX_UTIL.STRING_TO_TABLE(:P14_PROJECTS);
    curr_id := A_Department_seq.nextval - 1;
    FOR i IN 1..proj_list.COUNT LOOP
      UPDATE A_Project
      SET A_Department_dept_no = curr_id
      WHERE project_no = proj_list(i);
    END LOOP;
  END IF;
END;

-- Insert department manager
DECLARE
 man_list APEX_APPLICATION_GLOBAL.VC_ARR2;
 curr_id VARCHAR(50);

BEGIN
  IF(:P14_MANAGERS IS NOT NULL) THEN
    man_list := APEX_UTIL.STRING_TO_TABLE(:P14_MANAGERS);
    curr_id := A_Department_seq.nextval - 1;
    FOR i IN 1..man_list.COUNT LOOP
      UPDATE A_Person
      SET A_Department_dept_no = curr_id
      WHERE person_id = man_list(i);
    END LOOP;
  END IF;
END;

-- Insert family
DECLARE
 chi_list APEX_APPLICATION_GLOBAL.VC_ARR2;
 par_list APEX_APPLICATION_GLOBAL.VC_ARR2;

BEGIN
  IF(:P22_CHILDREN IS NOT NULL AND :P22_PARENTS IS NOT NULL) THEN
    chi_list := APEX_UTIL.STRING_TO_TABLE(:P22_CHILDREN);
    par_list := APEX_UTIL.STRING_TO_TABLE(:P22_PARENTS);
    FOR i IN 1..chi_list.COUNT LOOP
      FOR j IN 1..par_list.COUNT LOOP
        INSERT INTO A_Parents_Children
        (A_Person_person_id, A_Person_person_id2)
        VALUES
        (chi_list(i), par_list(j));
      END LOOP;
    END LOOP;
  END IF;
END;

-- Insert team
