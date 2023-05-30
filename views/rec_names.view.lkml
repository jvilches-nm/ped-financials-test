view: rec_names {
  derived_table: {
    sql: select distinct fiscal_year, rec_name, rec_code from looker.rec_member_districts ;;
  }
  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.fiscal_year ;;
  }

  dimension: rec_code {
    type: string
    sql: ${TABLE}.rec_code ;;
  }

  dimension: rec_name {
    type: string
    sql: ${TABLE}.rec_name ;;
  }

  measure: count {
    type: count
    drill_fields: [rec_name]
  }
  # values appear in the order you write in the case statement, rec_name_order is to show the values in the order.
  dimension: rec_name_order {
    label: "Rec Name"
    case: {
      when: {
        sql: ${rec_name} = '#1 - Four Corners REC' ;;
        label: "#1 - Four Corners REC"
      }
      when: {
       sql: ${rec_name} = '#2 - Northwest REC' ;;
        label: "#2 - Northwest REC"
      }
      when: {
      sql: ${rec_name} = '#3 - High Plains REC' ;;
        label: "#3 - High Plains REC"
      }
      when: {
        sql: ${rec_name} = '#3 - High Plains REC' ;;
        label: "#3 - High Plains REC"
      }
      when: {
        sql: ${rec_name} = '#4 - Northeast REC' ;;
        label: "#4 - Northeast REC"
      }
      when: {
        sql: ${rec_name} = '#5 - Central REC' ;;
        label: "#5 - Central REC"
      }
      when: {
        sql: ${rec_name} = '#6 - REC' ;;
        label: "#6 - REC"
      }
      when: {
        sql: ${rec_name} = '#7 - REC' ;;
        label: "#7 - REC"
      }
      when: {
        sql: ${rec_name} = '#8 - Pecos Valley REC' ;;
        label: "#8 - Pecos Valley REC"
      }
      when: {
        sql: ${rec_name} = '#9 - REC' ;;
        label: "#9 - REC"
      }
      when: {
        sql: ${rec_name} = '#10 - Southwest REC' ;;
        label: "#10 - Southwest REC"
      }
      else: "unknown"
    }
  }
}
