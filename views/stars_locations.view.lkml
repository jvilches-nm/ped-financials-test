
include: "/views/stars_districts.view"

view: stars_locations {
  sql_table_name: looker.stars_locations ;;

  dimension: location_identity  {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.location_identity ;;
  }

  dimension: district_id {
    type: string
    hidden: yes
    sql: ${TABLE}.district_id ;;
  }

  dimension: district_name {
    label: "District Name:"
    type: string
    hidden: yes
    sql: ${TABLE}.district_name ;;
    drill_fields: [School_name]
  }

  dimension: district_type {
    type: string
    hidden: yes
    sql: ${TABLE}.district_type ;;
  }

  measure: g10_pop {
    type: sum
    sql: ${TABLE}.g10_pop ;;
  }

  measure: g11_pop {
    type: sum
    sql: ${TABLE}.g11_pop ;;
  }

  measure: g12_pop {
    type: sum
    sql: ${TABLE}.g12_pop ;;
  }

  measure: g1_pop {
    type: sum
    sql: ${TABLE}.g1_pop ;;
  }

  measure: g2_pop {
    type: sum
    sql: ${TABLE}.g2_pop ;;
  }

  measure: g3_pop {
    type: sum
    sql: ${TABLE}.g3_pop ;;
  }

  measure: g4_pop {
    type: sum
    sql: ${TABLE}.g4_pop ;;
  }

  measure: g5_pop {
    type: sum
    sql: ${TABLE}.g5_pop ;;
  }

  measure: g6_pop {
    type: sum
    sql: ${TABLE}.g6_pop ;;
  }

  measure: g7_pop {
    type: sum
    sql: ${TABLE}.g7_pop ;;
  }

  measure: g8_pop {
    type: sum
    sql: ${TABLE}.g8_pop ;;
  }

  measure: g9_pop {
    type: sum
    sql: ${TABLE}.g9_pop ;;
  }

  dimension: grade_range {
    type: string
    sql: ${TABLE}.grade_range ;;
  }

  measure: kf_pop {
    type: sum
    sql: ${TABLE}.kf_pop ;;
  }

  dimension: location_full_address {
    type: string
    sql:  ${TABLE}.location_address +", "+ ${TABLE}.location_city +", "+ ${TABLE}.location ${location_state} +"" "+ ${TABLE}.location_zip;;
  }

  dimension: location_address {
    type: string
    hidden: yes
    sql: ${TABLE}.location_address ;;
  }

  dimension: location_city {
    type: string
    hidden: yes
    sql: ${TABLE}.location_city ;;
  }

  dimension: location_code {
    type: string
    sql: ${TABLE}.location_code ;;
  }

  dimension: location_county {
    type: string
    sql: ${TABLE}.location_county ;;
  }

  dimension: location_id {
    type: string
    hidden: yes
    sql: ${TABLE}.location_id ;;
  }

  dimension: location_latitude {
    type: string
    hidden: yes
    sql: ${TABLE}.location_latitude ;;
  }

  dimension: location_longitude {
    type: string
    hidden: yes
    sql: ${TABLE}.location_longitude ;;
  }

  dimension: map_location {
    type: location
    sql_latitude:${location_latitude} ;;
    sql_longitude:${location_longitude} ;;
  }

  dimension: School_name_plain {
    label: "School Name"
    type: string
    sql: ${TABLE}.location_name ;;
    link: {
      label: "School Profile"
      url: "/embed/dashboards-next/ped_public_financials::school?Select%20School%20Name={{ value }}"
      icon_url: "https://storage.googleapis.com/icons-bucket-nm/school-solid.png"
    }
    link: {
      label: "Compare"
      url: "/embed/dashboards-next/ped_public_financials::school_comp?Select%20Schools:={{ value }}"
      icon_url: "https://storage.googleapis.com/icons-bucket-nm/school-solid.png"
    }
    link: {
      label: "Website"
      url: "{{ location_website }}"
      icon_url: "https://storage.googleapis.com/icons-bucket-nm/window-maximize-solid.png"
    }
  }

  dimension: School_name {
    label: "School Name:"
    type: string
    sql: ${TABLE}.location_name ;;
    html: <p style="color: Yellow; font-size: 100%">{{ value }}</p> ;;
    link: {
      label: "School Profile"
      url: "/embed/dashboards-next/ped_public_financials::school?Select%20School%20Name={{ value }}"
      icon_url: "https://storage.googleapis.com/icons-bucket-nm/school-solid.png"
    }
    link: {
      label: "Compare"
      url: "/embed/dashboards-next/ped_public_financials::school_comp?Select%20Schools:={{ value }}"
      icon_url: "https://storage.googleapis.com/icons-bucket-nm/school-solid.png"
    }
    link: {
      label: "Website"
      url: "{{ location_website }}"
      icon_url: "https://storage.googleapis.com/icons-bucket-nm/window-maximize-solid.png"
    }
  }

  dimension: location_phone {
    type: string
    sql: ${TABLE}.location_phone ;;
  }

  dimension: location_state {
    type: string
    hidden: yes
    sql: ${TABLE}.location_state ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.location_type ;;
  }

  dimension: location_type_name {
    type: string
    sql: case when ${district_type}='State District' and ${location_type}='Charter School' then 'Local Charter School'
              when ${district_type}='State Charter' and ${location_type}='Charter School' then 'State Charter School'
              else ${location_type} end;;
  }

  dimension: location_type_col {
    label: "Location Type:"
    type: string
    sql: ${TABLE}.location_type ;;
    html: <p style="color: Yellow; font-size: 100%">{{ value }}</p> ;;
  }

  dimension: location_website {
    type: string
    sql: ${TABLE}.location_website ;;
    link: {
      label: "School Website"
      url: "{{ value }}"
    }}

  dimension: location_year {
    type: string
    hidden: yes
    sql: ${TABLE}.location_year ;;
  }

  dimension: location_zip {
    type: string
    hidden: yes
    sql: ${TABLE}.location_zip ;;
  }

  dimension: nces_district_id {
    type: string
    hidden: yes
    sql: ${TABLE}.nces_district_id ;;
  }

  dimension: nces_school_id {
    type: string
    sql: ${TABLE}.nces_school_id ;;
  }

  dimension: obms_code {
    type: string
    hidden: yes
    sql: ${TABLE}.obms_code ;;
  }

  measure: pk_pop {
    type: sum
    sql: ${TABLE}.pk_pop ;;
  }

  dimension: school_level {
    type: string
    sql: ${TABLE}.school_level ;;
  }

  dimension: school_level_code {
    type: string
    sql: ${TABLE}.school_level_code ;;
  }
  dimension: school_level_col {
    label: "School Level:"
    type: string
    sql: ${TABLE}.school_level ;;
    html: <p style="color: Yellow; font-size: 100%">{{ value }}</p> ;;
  }

  measure: student_pop {
    type: sum
    sql: ${TABLE}.student_pop ;;
  }
  dimension: student_pop_dim {
    type: number
    hidden: yes
    sql: ${TABLE}.student_pop ;;
  }
  dimension: school_size{
    type: string
    sql: CASE WHEN ${school_level_code}='HS' and ${student_pop_dim}<400 then 'S'
              WHEN ${school_level_code}!='HS' and ${student_pop_dim}<200 then 'S'
              WHEN ${school_level_code}='HS' and ${student_pop_dim}<1000 then 'M'
              WHEN ${school_level_code}!='HS' and ${student_pop_dim}<700 then 'M'
              ELSE 'L' END;;
  }
  dimension: school_size_col{
    label: "School Size:"
    type: string
    sql: CASE WHEN ${school_level_code}='HS' and ${student_pop_dim}<400 then 'S'
              WHEN ${school_level_code}!='HS' and ${student_pop_dim}<200 then 'S'
              WHEN ${school_level_code}='HS' and ${student_pop_dim}<1000 then 'M'
              WHEN ${school_level_code}!='HS' and ${student_pop_dim}<700 then 'M'
              ELSE 'L' END;;
    html: <p style="color: Yellow; font-size: 100%">{{ value }}</p> ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location_name ;;
  }

  set: drill_location {
    fields: [district_name, location, location_type_name, school_level, school_size]
  }

  measure: count {
    type: count
    drill_fields: [drill_location*]
    link: {
      label:"Drill into all Locations"
      url:"{{ link }}&fields=stars_locations.drill_location*&limit=2000"
    }
  }
  measure:  school_count{
    label: "No. of Schools"
    type: count_distinct
    drill_fields: [location]
    sql: ${TABLE}.location_name ;;
  }

#TEJA
  dimension: district_map {
    label: "District"
    type: location
    sql_longitude: ${stars_districts.district_office_longitude} ;;
    sql_latitude: ${stars_districts.district_office_latitude} ;;
  }

  dimension: District_Custom_Map {
    type: string
    label: "District Map"
    map_layer_name:my_neighborhood_layer
    sql: ${TABLE}.district_name ;;
    html: <p style="color: Yellow; font-size: 150%">{{ value }}</p> ;;
    link: {
      label: "School Profile"
      url: "/embed/dashboards-next/ped_public_financials::school?Select%20School%20Name={{ value }}"
      icon_url: "https://storage.googleapis.com/icons-bucket-nm/school-solid.png"
    }
    link: {
      label: "Compare"
      url: "/embed/dashboards-next/ped_public_financials::school_comp?Select%20Schools:={{ value }}"
      icon_url: "https://storage.googleapis.com/icons-bucket-nm/school-solid.png"
    }
    link: {
      label: "Website"
      url: "{{ location_website }}"
      icon_url: "https://storage.googleapis.com/icons-bucket-nm/window-maximize-solid.png"
    }
  }

}
