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

  dimension: incidents_per_student {
    type: number
    sql: ${TABLE}.incident_count ;;
  }


  dimension: incidents_per_student_band {
    type: string
    order_by_field: incidents_per_student_band_order
    sql: case when ${TABLE}.incident_count<=5 then cast(${TABLE}.incident_count as varchar)
              when ${TABLE}.incident_count>5 and ${TABLE}.incident_count<=10 then '6 to 10'
              when ${TABLE}.incident_count>10 and ${TABLE}.incident_count<=15 then '11 to 15'
              else '16+' end;;
  }


  dimension: incidents_per_student_band_order {
    type: number
    sql: case when ${TABLE}.incident_count=5 then ${TABLE}.incident_count
              when ${TABLE}.incident_count>5 and ${TABLE}.incident_count<=10 then 6
              when ${TABLE}.incident_count>10 and ${TABLE}.incident_count<=15 then 7
              else 8 end;;
    }


  measure: incident_count {
    description: "Incidents per student"
    type: sum
    sql: ${TABLE}.incident_count ;;
  }
  measure: student_count {
    description: "Students with incidents"
    type: count
  }

}
