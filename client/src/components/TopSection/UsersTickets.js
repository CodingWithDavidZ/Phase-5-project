import React from 'react';

function UsersTickets({ user }) {
  const userTickets = user.tickets.map((ticket) => {
    //TODO: add ticket status to ticket table
    // function getStatus(status) {
    //   switch (status) {
    //     case 'pending':
    //       return 'Pending';
    //     case 'open':
    //       return 'Open';
    //     case 'closed':
    //       return 'Closed';
    //     default:
    //       return 'Unknown';
    //   }
    // }

    function getDepartment(status) {
      switch (status) {
        case 1:
          return 'Front-End';
        case 2:
          return 'Back-End';
        case 3:
          return 'UX/UI';
        case 4:
          return 'Vulnerability';
        default:
          return 'Unknown';
      }
    }

    function getPriority(priority) {
      switch (priority) {
        case 1:
          return 'High';
        case 2:
          return 'Medium';
        case 3:
          return 'Low';
        default:
          return 'Unknown';
      }
    }

    return (
      <div className='alternate-color ticket-box'>
        <ul key={ticket.id} className='ticket'>
          <li>
            <strong>Ticket Number: </strong>
            {ticket.id}
          </li>
          <li>
            <strong>Ticket Name: </strong>
            {ticket.name}
          </li>
          <li>
            <strong>Priority: </strong>
            {getPriority(ticket.priority)}
          </li>
          <li>
            <strong>Description of Issue: </strong>
            {ticket.issue_description}
          </li>
          <li>
            <strong>Created: </strong>
            {ticket.created}
          </li>
          <li>
            <strong>Creator: </strong>
            {ticket.creator}
          </li>
          <li>
            <strong>Department: </strong>
            {getDepartment(ticket.department)}
          </li>
          <li>
            <strong>Image: </strong>
            <a
              target='_blank'
              rel='noopener noreferrer'
              href={ticket.image_url}
            >
              {ticket.image_url}
            </a>
          </li>
          <li>
            <strong>Ticket Opened: </strong>
            {ticket.start}
          </li>
          <li>
            <strong>Ticket Closed: </strong>
            {ticket.close}
          </li>
          <li>
            <strong>Submitted by: </strong>
            {ticket.submitted_by}
          </li>
          <li>
            <strong>Modified at: </strong>
            {ticket.modified}
          </li>
          <li>
            <strong>Modified by: </strong>
            {ticket.modified_by}
          </li>
          <li>
            <strong>Approved: </strong>
            {ticket.approved}
          </li>
        </ul>
      </div>
    );
  });

  return <div>{userTickets}</div>;
}

export default UsersTickets;
