view: tribal_consultation {
  sql_table_name: looker.tribal_consultation ;;

  dimension: tribe_name {
    type: string
    sql: ${TABLE}.tribe_name ;;
  }

  dimension: affirmation_topics {
    type: string
    sql: REPLACE(${TABLE}.affirmations, '#', CHAR(13)) ;;
    html:<div style="white-space:pre">{{value}}</div>;;
  }

  dimension: consultation_topics {
    type: string
    sql: REPLACE(${TABLE}.consultation_topics, '#', CHAR(13))  ;;
    html:<div style="white-space:pre">{{value}}</div>;;
    }

  dimension: narrative {
    type: string
    sql: ${TABLE}.narrative ;;
  }

  dimension: coordinator_email {
    type: string
    sql: ${TABLE}.district_coordinator_email ;;
  }

  dimension: coordinator_name {
    type: string
    sql: ${TABLE}.district_coordinator_name ;;
  }

  dimension: coordinator_phone {
    type: string
    sql: ${TABLE}.district_coordinator_phone ;;
  }

  dimension: coordinator_role {
    type: string
    sql: ${TABLE}.district_coordinator_title ;;
  }

  dimension: district {
    type: string
    hidden: yes
    sql: ${TABLE}.district ;;
  }

  dimension: district_code {
    type: string
    hidden: yes
    sql: ${TABLE}.district_code ;;
  }

  dimension: location_code {
    type: string
    hidden: yes
    sql: ${TABLE}.location_code ;;
  }

  dimension: school_year {
    type: string
    hidden: yes
    sql: ${TABLE}.school_year ;;
  }

  dimension: superintendent {
    type: string
    sql: ${TABLE}.superintendent_name ;;
  }

  dimension: superintendent_email {
    type: string
    sql: ${TABLE}.superintendent_email ;;
  }

  dimension: superintendent_phone {
    type: string
    sql: ${TABLE}.superintendent_phone ;;
  }

  dimension: tribal_email {
    type: string
    sql: ${TABLE}.tribal_email ;;
  }

  dimension: tribal_name {
    type: string
    sql: ${TABLE}.tribal_name ;;
  }

  dimension: tribal_phone {
    type: string
    sql: ${TABLE}.tribal_phone ;;
  }

  dimension: tribal_role {
    type: string
    sql: ${TABLE}.tribal_title ;;
  }

  dimension: response_to_good_faith_efforts {
    type: string
    sql: case when ${TABLE}.response_to_good_faith_efforts='TRUE' then 'Yes' else 'No' end ;;
  }

  dimension: attempted_contact_details {
    type: string
    sql: ${TABLE}.attempted_contact_details ;;
  }

  dimension: signature_printed_superintendent {
    type: string
    sql: ${TABLE}.sig_printed_superintendent ;;
  }
  dimension: signature_date_superintendent {
    type: date
    sql: ${TABLE}.sig_date_superintendent ;;
    html: {{ rendered_value | date: "%m/%d/%Y" }};;
  }
  dimension: signature_printed_tribe {
    type: string
    sql: ${TABLE}.sig_printed_tribe ;;
  }
  dimension: signature_date_tribe {
    type: date
    sql: ${TABLE}.sig_date_tribe ;;
    html: {{ rendered_value | date: "%m/%d/%Y" }};;
  }
}
