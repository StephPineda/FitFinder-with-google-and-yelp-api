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
        {props.dailyTasks.map((task, index) => {
          return (
          <tr key={index}>
            <td key={task.id}>
              <a href={task.location}>
                {task.name} | {task.event_start}
              </a>
            </td>
            <td>
              <a href="#" >
                <button  class="btn btn-info btn-sm eventbtn"
                         value={task.id}
                         onClick={ (e) => { props.bookClass(e.target.value) } }>
                Book Now
                </button>
              </a>
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
