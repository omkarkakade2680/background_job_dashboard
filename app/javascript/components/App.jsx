import React, { useEffect, useState } from "react";

export default function App() {
  const [jobs, setJobs] = useState([]);

  useEffect(() => {
    fetch("/api/v1/job_logs")
      .then(res => res.json())
      .then(data => setJobs(data));
  }, []);

  return (
    <div>
      <h2>Background Jobs</h2>
      <ul>
        {jobs.map(job => (
          <li key={job.id}>
            {job.name} - {job.status} - {job.run_time || "N/A"}s
          </li>
        ))}
      </ul>
    </div>
  );
}
