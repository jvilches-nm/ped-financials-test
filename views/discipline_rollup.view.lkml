view: discipline_rollup {
   derived_table: {
     sql: select school_year, district_code, district_name, school_code, school_name, student_id, count(distinct infraction_event_id) incident_count
            from looker.discipline_demographics
           group by school_year, district_code, district_name, school_code, school_name, student_id
       ;;
   }

  dimension: district_code {
    type: string
    description:"Three digit district code"
    sql: ${TABLE}.District_Code ;;
  }
  dimension: district_name {
    type: string
    map_layer_name: my_neighborhood_layer_v2
    description: "District name"
    sql: ${TABLE}.district_name ;;
  }

  dimension: school_code {
    type: string
    description: "Three digit school location code"
    sql: ${TABLE}.school_code ;;
  }
  dimension: school_name {
    type: string
    description: "School name"
    sql: ${TABLE}.school_name ;;
  }
  dimension: school_year {
    type: string
    description: "School year"
    sql: cast(year(${TABLE}.school_year)-1 as varchar) + '-' + cast(year(${TABLE}.school_year) as varchar);;
  }

  dimension: student_id {
    type: string
    hidden: yes
    sql: ${TABLE}.student_id ;;
  }

   measure: incident_count {
     description: "Incidents per student"
     type: sum
     sql: ${TABLE}.incident_count ;;
   }
 }
