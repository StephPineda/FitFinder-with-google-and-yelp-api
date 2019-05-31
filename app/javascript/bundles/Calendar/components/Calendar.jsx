import React, { Component } from "react";
import dateFns from "date-fns";
import Header from "./Header";
import Days from "./Days";
import Cells from "./Cells";
import axios from "axios";

export default class Calendar extends Component {
  state = {
    currentMonth: new Date(),
    currentDate: new Date(),
    tasks: {}
  };

  fetchgyms = currentMonth => {
    const monthStart = dateFns.startOfMonth(currentMonth);
    const monthEnd = dateFns.endOfMonth(monthStart);
    const startDate = dateFns.format(
      dateFns.startOfWeek(monthStart),
      "YYYY-MM-DD"
    );
    const endDate = dateFns.format(dateFns.endOfWeek(monthEnd), "YYYY-MM-DD");
    axios
      .get(`/calendar.json?start_date=${startDate}&end_date=${endDate}`)
      .then(response => this.setState({ tasks: response.data, currentMonth }));
  };

  nextMonth = () => {
    const currentMonth = dateFns.addMonths(this.state.currentMonth, 1);
    this.fetchgyms(currentMonth);
  };

  prevMonth = () => {
    const currentMonth = dateFns.subMonths(this.state.currentMonth, 1);
    this.fetchgyms(currentMonth);
  };

  render() {
    const { currentMonth, currentDate, gyms } = this.state;
    return (
      <div className="calendar">
        <Header
          currentMonth={currentMonth}
          prevMonth={this.prevMonth}
          nextMonth={this.nextMonth}
        />
        <Days />
        <Cells
          currentMonth={currentMonth}
          currentDate={currentDate}
          gyms={gyms}
        />
      </div>
    );
  }

  componentDidMount() {
    const { currentMonth } = this.state;
    this.fetchGyms(currentMonth);
  }
}
