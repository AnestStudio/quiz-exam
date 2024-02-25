function confirmDeleteQuestion(id) {
  const url = window.location.origin + "/question/exam/exits/" + id;
  let html = "";
  fetch(url, {
    method: "GET",
    headers: {
      "Content-Type": "application/json"
    }
  })
  .then(response => {
    if (!response.ok) {
      throw new Error('Network response was not ok');
    }
    return response.json();
  })
  .then(data => {
    const confirmCheckbox = document.getElementById('confirm-checkbox');
    const confirmCheckboxLabel = document.getElementById('confirm-checkbox-label');
    const linkButton = document.getElementById('btn-confirm-modal');

    if (Number(data.length) === 0) {
      html = "Confirm delete of this question id <strong class='color-tan'>" + id + "</strong> ?";
      confirmCheckbox.style.display = "none";
      confirmCheckboxLabel.style.display = "none";
      linkButton.href = "/question/delete/" + id;
      linkButton.classList.remove("link-disable");
    } else {
      let temp = '';
      data.exams.forEach(value => {
        temp += '<span class="color-tan">– &nbsp;' + value + '</span><br />';
      });
      html = "Questions exist in " + data.length + " exam questions:<br />" + temp + "<br />Are you sure you want to delete the question id <strong class='color-tan'>" + id + "</strong> ?";
      confirmCheckbox.style.display = "block";
      confirmCheckboxLabel.style.display = "block";
      linkButton.href = "javascript:void(0)";
      linkButton.classList.add("link-disable");
    }

    document.getElementById("confirm-modal-content").innerHTML = html;
    confirmCheckbox.addEventListener('change', function() {
        if (this.checked) {
          linkButton.href = "/question/delete/" + id;
          linkButton.classList.remove("link-disable");
        } else {
          linkButton.href = "javascript:void(0)";
          linkButton.classList.add("link-disable");
        }
    });
    openModal("confirmModal");
  })
  .catch(error => {
    document.getElementById("confirm-modal-content").innerHTML = "Load data error.";
    openModal("confirmModal");
  });
}

function confirmDeleteQuestionInExam(examId, questionId) {
  document.getElementById('confirm-checkbox').style.display = "none";
  document.getElementById('confirm-checkbox-label').style.display = "none";
  document.getElementById("btn-confirm-modal").href = "/exam/view/question/delete/" + examId + "/" + questionId;
  document.getElementById("confirm-modal-content").innerHTML
    = "Confirm delete of this question id " +
      "" +
      "<strong class='color-tan'>" + questionId + "</strong> ?";
  openModal("confirmModal");
}

function confirmDeleteScheduleInExam(examId, scheduleId) {
  document.getElementById('confirm-checkbox').style.display = "none";
  document.getElementById('confirm-checkbox-label').style.display = "none";
  document.getElementById("btn-confirm-modal").href = "/exam/schedule/delete/" + examId + "/" + scheduleId;
  document.getElementById("confirm-modal-content").innerHTML
    = "Confirm delete of this schedule id <strong class='color-tan'>" + scheduleId + "</strong> ?";
  openModal("confirmModal");
}

function confirmDeleteExam(subjectId, examId) {
  const url = window.location.origin + "/exam/schedule/exits/" + examId;
  let html = "";
  fetch(url, {
    method: "GET",
    headers: {
      "Content-Type": "application/json"
    }
  })
  .then(response => {
    if (!response.ok) {
      throw new Error('Network response was not ok');
    }
    return response.json();
  })
  .then(data => {
    const confirmCheckbox = document.getElementById('confirm-checkbox');
    const confirmCheckboxLabel = document.getElementById('confirm-checkbox-label');
    const linkButton = document.getElementById('btn-confirm-modal');

    if (Number(data.length) === 0) {
      html = "Confirm delete of this exam id <strong class='color-tan'>" + examId + "</strong> ?";
      confirmCheckbox.style.display = "none";
      confirmCheckboxLabel.style.display = "none";
      linkButton.href = "/exam/delete/" + subjectId + "/" + examId;
      linkButton.classList.remove("link-disable");
    } else {
      html = "<span class='text-danger' style='font-size: 20px'>This exam has 2 exam schedules.</span><br />Are you sure you want to delete the exam id <strong class='color-tan'>" + examId + "</strong> ?";
      confirmCheckbox.style.display = "block";
      confirmCheckboxLabel.style.display = "block";
      linkButton.href = "javascript:void(0)";
      linkButton.classList.add("link-disable");
    }
    document.getElementById("confirm-modal-content").innerHTML = html;
    confirmCheckbox.addEventListener('change', function() {
        if (this.checked) {
          linkButton.href = "/exam/delete/" + subjectId + "/" + examId;
          linkButton.classList.remove("link-disable");
        } else {
          linkButton.href = "javascript:void(0)";
          linkButton.classList.add("link-disable");
        }
    });
    openModal("confirmModal");
  })
  .catch(error => {
    document.getElementById("confirm-modal-content").innerHTML = "Load data error.";
    openModal("confirmModal");
  });
}

function viewImage(imageName) {
  document.getElementById("image-view").innerHTML
    = '<img src="/media/images/' + imageName + '" alt="" style="width: 100%; border-radius: 12px">';
  openModal("viewImageModal");
}

function viewExamMode(mode) {
  if (mode === 1) {
    document.getElementById("table-mode").style.display = "block";
    document.getElementById("detail-mode").style.display = "none";
  }
  if (mode === 2) {
    document.getElementById("table-mode").style.display = "none";
    document.getElementById("detail-mode").style.display = "block";
  }
}

function viewQuestionInExamTableMode(examId, questionId) {
  const url = window.location.origin + "/exam/view/question/" + examId + "/" + questionId;
  fetch(url, {
    method: "GET",
    headers: {
      "Content-Type": "application/json"
    }
  })
  .then(response => {
    if (!response.ok) {
      throw new Error('Network response was not ok');
    }
    return response.json(); // Parse the response body as JSON
  })
  .then(question => {
    let modal = document.getElementById("modal-dialog-size");
    let html = ``;
    if (question.image === "no_image") {
      modal.classList.add("modal-lg");
      modal.classList.remove("modal-xl");
      html = `
                <div class="row">
                  <div class="col-12 col-lg-12">
                    <table class="view-question-table w-100">
                      <tr>
                        <td>Question ID:</td>
                        <td class="ps-3">${question.question_id}</td>
                      </tr>
                      <tr>
                        <td>Subject:</td>
                        <td class="ps-3">${question.subject.subject_code} - ${question.subject.subject_name}</td>
                      </tr>
                      <tr>
                        <td>Question:</td>
                        <td class="ps-3 color-tan">${question.question}</td>
                      </tr>
                      <tr>
                        <td>Answer list:</td>
                        <td class="ps-3">
                          <ul>
                          ${Object.entries(question.answer_list).map(([key, value]) => `
                              ${question.answer.includes(key) ? '<li class="text-success">' : '<li>'}${key.toUpperCase()}: ${value}</li>
                          `).join('')}
                          </ul>
                        </td>
                      </tr>
                      <tr>
                        <td>Mark:</td>
                        <td class="ps-3">${question.mark}</td>
                      </tr>
                      <tr>
                        <td>Unit:</td>
                        <td class="ps-3">${question.unit}</td>
                      </tr>
                      <tr>
                        <td style="width: 90px">Mix choices:</td>
                        <td class="ps-3">${question.mix_choices === 'false' ? 'No' : 'Yes'}</td>
                      </tr>
                    </table>
                  </div>
                </div>
              `;
    } else {
      modal.classList.add("modal-xl");
      modal.classList.remove("modal-lg");
      html = `
                <div class="row">
                  <div class="col-12 col-lg-5 pt-2">
                    <img src="/media/images/${question.image}" alt="" style="width: 100%; border-radius: 12px;">
                  </div>
                  <div class="col-12 col-lg-7 ps-4">
                    <table class="view-question-table w-100">
                      <tr>
                        <td>Question ID:</td>
                        <td class="ps-3">${question.question_id}</td>
                      </tr>
                      <tr>
                        <td>Subject:</td>
                        <td class="ps-3">${question.subject.subject_code} - ${question.subject.subject_name}</td>
                      </tr>
                      <tr>
                        <td>Question:</td>
                        <td class="ps-3 color-tan">${question.question}</td>
                      </tr>
                      <tr>
                        <td>Answer list:</td>
                        <td class="ps-3">
                          <ul>
                          ${Object.entries(question.answer_list).map(([key, value]) => `
                              ${question.answer.includes(key) ? '<li class="text-success">' : '<li>'}${key.toUpperCase()}: ${value}</li>
                          `).join('')}
                          </ul>
                        </td>
                      </tr>
                      <tr>
                        <td>Mark:</td>
                        <td class="ps-3">${question.mark}</td>
                      </tr>
                      <tr>
                        <td>Unit:</td>
                        <td class="ps-3">${question.unit}</td>
                      </tr>
                      <tr>
                        <td style="width: 90px">Mix choices:</td>
                        <td class="ps-3">${question.mix_choices === 'false' ? 'No' : 'Yes'}</td>
                      </tr>
                    </table>
                  </div>
                </div>
              `;
    }
    document.getElementById("view-question-in-exam").innerHTML = html;
    openModal("viewQuestionInExamModal");
  })
  .catch(error => {
    document.getElementById("confirm-modal-content").innerHTML = "Load data error.";
    openModal("confirmModal");
  });
}