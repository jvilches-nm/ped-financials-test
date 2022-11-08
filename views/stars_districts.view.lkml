view: stars_districts {
  sql_table_name: looker.stars_districts ;;

  measure: charter_g10_pop {
    type: sum
    sql: ${TABLE}.charter_g10_pop ;;
  }

  measure: charter_g11_pop {
    type: sum
    sql: ${TABLE}.charter_g11_pop ;;
  }

  measure: charter_g12_pop {
    type: sum
    sql: ${TABLE}.charter_g12_pop ;;
  }

  measure: charter_g1_pop {
    type: sum
    sql: ${TABLE}.charter_g1_pop ;;
  }

  measure: charter_g2_pop {
    type: sum
    sql: ${TABLE}.charter_g2_pop ;;
  }

  measure: charter_g3_pop {
    type: sum
    sql: ${TABLE}.charter_g3_pop ;;
  }

  measure: charter_g4_pop {
    type: sum
    sql: ${TABLE}.charter_g4_pop ;;
  }

  measure: charter_g5_pop {
    type: sum
    sql: ${TABLE}.charter_g5_pop ;;
  }

  measure: charter_g6_pop {
    type: sum
    sql: ${TABLE}.charter_g6_pop ;;
  }

  measure: charter_g7_pop {
    type: sum
    sql: ${TABLE}.charter_g7_pop ;;
  }

  measure: charter_g8_pop {
    type: sum
    sql: ${TABLE}.charter_g8_pop ;;
  }

  measure: charter_g9_pop {
    type: sum
    sql: ${TABLE}.charter_g9_pop ;;
  }

  measure: charter_kf_pop {
    type: sum
    sql: ${TABLE}.charter_kf_pop ;;
  }

  measure: charter_pk_pop {
    type: sum
    sql: ${TABLE}.charter_pk_pop ;;
  }

  measure: charter_student_pop {
    type: sum
    sql: ${TABLE}.charter_student_pop ;;
  }

  dimension: district_id {
    type: string
    sql: ${TABLE}.district_id ;;
  }

  dimension: district_identity {
    type: number
    hidden: no
    primary_key: yes
    value_format_name: id
    sql: ${TABLE}.district_identity ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.district_name ;;
    link: {
      label: "District Profile"
      url: "/embed/dashboards-next/ped_public_financials::district?District:={{ value }}"
      icon_url: "https://storage.googleapis.com/icons-bucket-nm/city-solid.png"
    }
    link: {
      label: "Map"
      url: "/embed/dashboards-next/ped_public_financials::school_map?District:={{ value }}"
      icon_url: "https://storage.googleapis.com/icons-bucket-nm/map-marked-alt-solid.png"
    }
    drill_fields: [stars_locations.school_name]
  }

  dimension: district_office_latitude {
    type: string
    hidden: yes
    sql: ${TABLE}.district_office_latitude ;;
  }

  dimension: district_office_longitude {
    type: string
    hidden: yes
    sql: ${TABLE}.district_office_longitude ;;
  }

  dimension: district_office_map {
    type: location
    sql_longitude: ${district_office_longitude} ;;
    sql_latitude: ${district_office_latitude} ;;
  }

  dimension: district_type {
    type: string
    sql: ${TABLE}.district_type ;;
  }

  dimension: location_year {
    type: string
    hidden: yes
    sql: ${TABLE}.location_year ;;
  }

  dimension: nces_district_id {
    type: string
    sql: ${TABLE}.nces_district_id ;;
  }

  measure: public_g10_pop {
    type: sum
    sql: ${TABLE}.public_g10_pop ;;
  }

  measure: public_g11_pop {
    type: sum
    sql: ${TABLE}.public_g11_pop ;;
  }

  measure: public_g12_pop {
    type: sum
    sql: ${TABLE}.public_g12_pop ;;
  }

  measure: public_g1_pop {
    type: sum
    sql: ${TABLE}.public_g1_pop ;;
  }

  measure: public_g2_pop {
    type: sum
    sql: ${TABLE}.public_g2_pop ;;
  }

  measure: public_g3_pop {
    type: sum
    sql: ${TABLE}.public_g3_pop ;;
  }

  measure: public_g4_pop {
    type: sum
    sql: ${TABLE}.public_g4_pop ;;
  }

  measure: public_g5_pop {
    type: sum
    sql: ${TABLE}.public_g5_pop ;;
  }

  measure: public_g6_pop {
    type: sum
    sql: ${TABLE}.public_g6_pop ;;
  }

  measure: public_g7_pop {
    type: sum
    sql: ${TABLE}.public_g7_pop ;;
  }

  measure: public_g8_pop {
    type: sum
    sql: ${TABLE}.public_g8_pop ;;
  }

  measure: public_g9_pop {
    type: sum
    sql: ${TABLE}.public_g9_pop ;;
  }

  measure: public_kf_pop {
    type: sum
    sql: ${TABLE}.public_kf_pop ;;
  }

  measure: public_pk_pop {
    type: sum
    sql: ${TABLE}.public_pk_pop ;;
  }

  measure: public_student_pop {
    type: sum
    sql: ${TABLE}.public_student_pop ;;
  }

  measure: total_g10_pop {
    type: sum
    sql: ${TABLE}.total_g10_pop ;;
  }

  measure: total_g11_pop {
    type: sum
    sql: ${TABLE}.total_g11_pop ;;
  }

  measure: total_g12_pop {
    type: sum
    sql: ${TABLE}.total_g12_pop ;;
  }

  measure: total_g1_pop {
    type: sum
    sql: ${TABLE}.total_g1_pop ;;
  }

  measure: total_g2_pop {
    type: sum
    sql: ${TABLE}.total_g2_pop ;;
  }

  measure: total_g3_pop {
    type: sum
    sql: ${TABLE}.total_g3_pop ;;
  }

  measure: total_g4_pop {
    type: sum
    sql: ${TABLE}.total_g4_pop ;;
  }

  measure: total_g5_pop {
    type: sum
    sql: ${TABLE}.total_g5_pop ;;
  }

  measure: total_g6_pop {
    type: sum
    sql: ${TABLE}.total_g6_pop ;;
  }

  measure: total_g7_pop {
    type: sum
    sql: ${TABLE}.total_g7_pop ;;
  }

  measure: total_g8_pop {
    type: sum
    sql: ${TABLE}.total_g8_pop ;;
  }

  measure: total_g9_pop {
    type: sum
    sql: ${TABLE}.total_g9_pop ;;
  }

  measure: total_kf_pop {
    type: sum
    sql: ${TABLE}.total_kf_pop ;;
  }

  measure: total_pk_pop {
    type: sum
    sql: ${TABLE}.total_pk_pop ;;
  }

  measure: total_student_pop {
    type: sum
    label: "# Students"
    sql: ${TABLE}.total_student_pop ;;
  }

  dimension: public_student_pop_dim {
    type: number
    hidden: yes
    sql: ${TABLE}.public_student_pop ;;
  }

  dimension: district_size {
    type: string
    sql: CASE WHEN ${public_student_pop_dim}<200 then 'XS'
              WHEN ${public_student_pop_dim}<4000 then 'S'
              WHEN ${public_student_pop_dim}<10000 then 'M'
              WHEN ${public_student_pop_dim}<50000 then 'L'
              WHEN ${public_student_pop_dim}>=50000 then 'XL'
              ELSE '' END;;
  }

  measure: count {
    type: count
    drill_fields: [district_name]
  }

  dimension: District_Custom_Map {
    type: string
    label: "District Name:"
    map_layer_name: my_neighborhood_layer
    sql: ${TABLE}.district_name ;;
    link: {
      label: "District Profile"
      url: "/embed/dashboards-next/ped_public_financials::district?District:={{ value }}"
      icon_url: "https://storage.googleapis.com/icons-bucket-nm/city-solid.png"
    }
    link: {
      label: "Map"
      url: "/embed/dashboards-next/ped_public_financials::school_map?District:={{ value }}"
      icon_url: "https://storage.googleapis.com/icons-bucket-nm/map-marked-alt-solid.png"
    }
  }

  dimension :Name_of_the_District{
    label: "Name of the District"
    type: string
    sql: ${TABLE}.district_name ;;
    html: {% if stars_districts.district_name._is_filtered %}
          <a>{{rendered_value}} </a>
          {% else %}
          <a> All Districts </a>
          {% endif %};;
  }


  dimension: District_Custom_Map_color {
    type: string
    label: "Name of the District :"
    map_layer_name: my_neighborhood_layer
    sql: ${TABLE}.district_name ;;
    html: <p style="color: Yellow; font-size: 100%">{{ value }}</p> ;;
    link: {
      label: "District Profile"
      url: "/embed/dashboards-next/ped_public_financials::district?District:={{ value }}"
      icon_url: "https://storage.googleapis.com/icons-bucket-nm/city-solid.png"
    }
    link: {
      label: "Map"
      url: "/embed/dashboards-next/ped_public_financials::school_map?District:={{ value }}"
      icon_url: "https://storage.googleapis.com/icons-bucket-nm/map-marked-alt-solid.png"
    }
  }
  measure: total_students {
    type: sum
    label: "Students:"
    sql: ${TABLE}.total_student_pop ;;
    value_format: "0"
    html: <p style="color: Yellow; font-size: 100%">{{ value | round }}</p>;;
  }
}
