import React from "react";
import { Modal, ModalHeader, ModalBody } from "reactstrap";
import dateFns from "date-fns";

const CalendarModal = props => (
  <Modal isOpen={props.modalOpen} toggle={props.closeModal}>
    <ModalHeader toggle={props.closeModal}>
      {dateFns.format(props.selectedDate, "dddd, MMMM Do")}
    </ModalHeader>
    <ModalBody>
      <table>
      <thead>
        <tr>
          <th scope="col"></th>
          <th scope="col"></th>
        </tr>
      </thead>
      <tbody>
        {props.dailyTasks.map(task => {
          return (
          <tr>
            <td key={task.id}>
              <a href={task.location}>
                {task.name} | {task.event_start}
              </a>
            </td>
            <td>
              <a href="/user/${user_id}" class="btn btn-info btn-sm eventbtn">Book Now</a>
            </td>
          </tr>
          );
        })}
        {props.dailyTasks.length === 0 && (
          <p>
            <i>No classes scheduled today</i>
          </p>
        )}
        </tbody>
      </table>
    </ModalBody>
  </Modal>
);

export default CalendarModal;
