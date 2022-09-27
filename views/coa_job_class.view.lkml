view: coa_job_class {
  derived_table: { sql: select jc.*, jcc.code job_category_code, jcc.name job_category_name,
                               jcc.description job_category_descirption
                           from COA.CoaJobClass jc
                          left join COA.CoaJobClassCategory jcc on jc.fkcoajobclasscategory=jcc.pkcoajobclasscategory ;;
    persist_for: "4 hour"
    indexes: ["pkcoajobclass", "job_category_code"]}
  label: "UCOA Job Class"
  dimension: budgetable {
    type: string
    hidden: yes
    sql: ${TABLE}.Budgetable ;;
  }

  dimension: code {
    type: string
    label: "Job Code"
    sql: ${TABLE}.Code ;;
  }

  dimension: description {
    type: string
    hidden: yes
    sql: ${TABLE}.Description ;;
  }

  dimension: fk_coa_job_class_category {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCoaJobClassCategory ;;
  }

  dimension: fk_coa_type {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCoaType ;;
  }

  dimension: fk_modified_by {
    type: number
    hidden: yes
    sql: ${TABLE}.fkModifiedBy ;;
  }

  dimension: fk_parent_job_class {
    type: number
    hidden: yes
    sql: ${TABLE}.fkParentJobClass ;;
  }

  dimension: fk_stat_ftitles_report_title {
    type: number
    hidden: yes
    sql: ${TABLE}.fkStatFTitlesReportTitle ;;
  }

  dimension: is_licensed {
    type: string
    hidden: yes
    sql: ${TABLE}.IsLicensed ;;
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
  dimension: job_category_description {
    type: string
    hidden: yes
    sql: ${TABLE}.job_category_description ;;
  }
  dimension_group: modified {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ModifiedDate ;;
  }

  dimension: job_name {
    type: string
    label: "Job Name"
    sql: ${TABLE}.Name ;;
  }

  dimension: not_in_use {
    type: string
    hidden: yes
    sql: ${TABLE}.NotInUse ;;
  }

  dimension: parent_type {
    type: string
    hidden: yes
    sql: ${TABLE}.ParentType ;;
  }

  dimension: pk_coa_job_class {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkCoaJobClass ;;
  }

  dimension: postable {
    type: string
    hidden: yes
    sql: ${TABLE}.Postable ;;
  }

  dimension: requires_nonzero_fte {
    type: string
    hidden: yes
    sql: ${TABLE}.RequiresNonzeroFTE ;;
  }

  dimension: summary_line {
    type: string
    hidden: yes
    sql: ${TABLE}.SummaryLine ;;
  }

  dimension: supports_fte {
    type: string
    hidden: yes
    sql: ${TABLE}.SupportsFTE ;;
  }

}
