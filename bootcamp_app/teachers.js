const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohort = process.argv[2];

pool.query(`
  SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
  FROM cohorts
  JOIN students ON cohort_id = cohorts.id
  JOIN assistance_requests ON student_id = students.id
  JOIN teachers ON teacher_id = teachers.id
  WHERE cohorts.name = '${process.argv[2]}'
  ORDER BY teachers.name
  `)
  .then(res => {
    res.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.teacher}`);
    })
  })
  .catch(err => console.log('query err', err.stack));
