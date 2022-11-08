view: coa_job_class {
  derived_table: { sql: select jc.*, jcc.code job_category_code, jcc.name job_category_name,
                               jcc.description job_category_descirption
                           from COA.CoaJobClass jc
                          left join COA.CoaJobClassCategory jcc on jc.fkcoajobclasscategory=jcc.pkcoajobclasscategory ;;
    datagroup_trigger: ped_public_financials_test_datagroup
    indexes: ["pkcoajobclass", "job_category_code"]}

  label: "UCOA Job Class"

  dimension: code {
    type: string
    label: "Job Code"
    sql: ${TABLE}.Code ;;
  }

  dimension: job_category_code {
    type: string
    label: "Job Category Code"
    sql: case when ${TABLE}.name = 'No Job Class' then 'None'
              when ${TABLE}.job_category_code is null then 'Other'
              else ${TABLE}.job_category_code end ;;
  }

  dimension: job_category_name {
    type: string
    label: "Job Category Name"
    sql: case when ${TABLE}.name = 'No Job Class' then 'None'
              when ${TABLE}.job_category_name is null then 'Other'
              else ${TABLE}.job_category_name end ;;
    drill_fields: [job_name]
  }

  dimension: job_rollup_name {
    type: string
    label: "Job Rollup Name"
    sql: CASE WHEN ${job_category_code}='TE' then 'Teachers'
              WHEN ${job_category_code}='OT' then 'Other Professionals'
              WHEN ${job_category_code}='IA' then 'Instructional Assistants'
              WHEN ${job_category_code}='AD' then 'Administrators'
              WHEN ${job_category_code}='Other' then 'Other'
              WHEN ${job_category_code}='None' then 'None'
              ELSE 'Support' END ;;
    drill_fields: [job_category_name]
  }

  dimension: job_name {
    type: string
    label: "Job Name"
    sql: ${TABLE}.Name ;;
  }

  dimension: pk_coa_job_class {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkCoaJobClass ;;
  }

}
