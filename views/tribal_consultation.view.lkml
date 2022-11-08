view: tribal_consultation {
  sql_table_name: looker.tribal_consultation ;;

  dimension: affirmation_topics {
    type: string
    sql: REPLACE(${TABLE}.affirmation_topics, '#', CHAR(13)) ;;
    html:<div style="white-space:pre">{{value}}</div>;;
  }

  dimension: consultation_topics {
    type: string
    sql: REPLACE(${TABLE}.consultation_topics, '#', CHAR(13))  ;;
    html:<div style="white-space:pre">{{value}}</div>;;
    }

  dimension: coordinator_email {
    type: string
    sql: ${TABLE}.coordinator_email ;;
  }

  dimension: coordinator_name {
    type: string
    sql: ${TABLE}.coordinator_name ;;
  }

  dimension: coordinator_phone {
    type: string
    sql: ${TABLE}.coordinator_phone ;;
  }

  dimension: coordinator_role {
    type: string
    sql: ${TABLE}.coordinator_role ;;
  }

  dimension: district {
    type: string
    #hidden: yes
    sql: ${TABLE}.district ;;
  }

  dimension: district_code {
    type: string
    #hidden: yes
    sql: ${TABLE}.district_code ;;
  }

  dimension: location_code {
    type: string
    #hidden: yes
    sql: ${TABLE}.location_code ;;
  }

  dimension: school_year {
    type: string
    hidden: yes
    sql: ${TABLE}.school_year ;;
  }

  dimension: superintendent {
    type: string
    sql: ${TABLE}.superintendent ;;
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
    sql: ${TABLE}.tribal_role ;;
  }

}
