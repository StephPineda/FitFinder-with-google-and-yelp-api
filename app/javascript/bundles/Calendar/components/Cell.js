import React from "react";
import dateFns from "date-fns";

const Cell = props => {
  return (
    <div
      className={`calendar-col cell ${
        !dateFns.isSameMonth(props.day, props.currentMonth)
          ? "disabled"
          : dateFns.isSameDay(props.day, props.currentDate)
          ? "current"
          : ""
      }`}
    >
      <div className="calendar-events">
        {props.dailyGyms.map(gym => {
          return (
            <div key={gym.id} className="calendar-event">
              {gym.completed ? <s>{gym.description}</s> : gym.description}
            </div>
          );
        })}
      </div>
      <span className="number">{dateFns.format(props.day, "D")}</span>
    </div>
  );
};

export default Cell;
