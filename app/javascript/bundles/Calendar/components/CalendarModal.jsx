import React from "react";
import { Modal, ModalHeader, ModalBody } from "reactstrap";
import dateFns from "date-fns";

const CalendarModal = props => (
  <Modal isOpen={props.modalOpen} toggle={props.closeModal}>
    <ModalHeader toggle={props.closeModal}>
      {dateFns.format(props.selectedDate, "dddd, MMMM Do")}
    </ModalHeader>
    <ModalBody>
      <ul>
        {props.dailyTasks.map(task => {
          return (
            <li key={task.id}>
              <a href={task.location}>
                {task.name} | {task.event_start}
              </a>
            </li>
          );
        })}
        {props.dailyTasks.length === 0 && (
          <p>
            <i>No tasks due today</i>
          </p>
        )}
      </ul>
    </ModalBody>
  </Modal>
);

export default CalendarModal;
