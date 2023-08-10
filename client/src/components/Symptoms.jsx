import React, { useState, useEffect } from "react";
import '../styles/signup.css';
import Axios from "axios";
import swal from 'sweetalert';
import {useNavigate, Link } from 'react-router-dom';
import Nav from './patient_components/patNav.jsx';


import Select from "react-select";
import { Fragment } from "react";
import { FormLabel, FormInput } from "@tailwindcss/forms";

function AppointmentForm() {
  const [selectedOptions, setSelectedOptions] = useState([]);
  const [options, setOptions] = useState([]);
  const [sym_di, setSym_di] = useState([]);
  const [isChecked, setIsChecked] = useState(false);
  const[theme, setTheme] = useState(localStorage.theme);

  const navigate = useNavigate();

  //const handleOptionsChange = (event) => {
  //  setSymptoms(event.target.value);
  //};

  const handleChange = (event) => {
    const value = event.target.value;
    const checked = event.target.checked;

    setIsChecked(event.target.checked);

    if (checked) {
      setSelectedOptions((prev) => [...prev, value]);
    } else {
      setSelectedOptions((prev) => prev.filter((option) => option !== value));
    }
  };

  useEffect(() => {

     Axios.get('http://localhost:5000/protected', { withCredentials: true }).then((response)=>{
       if(response.data.class != 'patient'){
           swal({
               title:"Only Patients are allowed to make appointments!",
               icon: "warning",
           });
           navigate("/");
       }else{
         const userId_detail = {userId: response.data.id}
         Axios.post('http://localhost:5000/get_patient_id', userId_detail).then((response)=>{
                console.log(response.data.p_fname,response.data.pid);
         });
       }
       }).catch(error => {
           console.log(error);
           navigate('/login');
       });


      Axios.post('http://localhost:5000/get_symptoms').then((response)=>{
          //console.log(response.data.symptoms);
          setOptions(response.data.symptoms);
      });
  }, []);


  
  const handleDarkModeChange = (darkMode) => {
    setTheme(darkMode);
    if (darkMode == 'dark') {
      document.body.classList.add('dark-mode');
    } else {
      document.body.classList.remove('dark-mode');
    }
  };


  const handleSubmit = async (event) => {
    console.log("before", isChecked);
    if(!isChecked){
      console.log(isChecked);
      // swal({
      //   title:"Please Check Atleast one symptom!",
      //   icon: "Warning",
      // });
    }
    else{
        event.preventDefault();
        // Send form data to server
        const disease_details = {symptoms: selectedOptions};
        Axios.post('http://localhost:5000/detect_disease', disease_details).then((response)=>{
            console.log(response.data.diseases[0]);
            navigate('/appointments',{ state: { diseases:  response.data.diseases[0]}});
        });
    }
  };


  return (

    <div className='bg-violet-400  min-h-full'>
            
        <Nav onDarkModeChange={handleDarkModeChange} />

        <div className="signup-container flex-col text-xl" >
            <form onSubmit={handleSubmit}>
              
              <div className="content-center rounded-lg bg-slate-100 duration-300 p-4 py-10 shadow-2xl my-20 bg-opacity-80">
                  <h2 className="text-center text-slate-800 font-bold text-4xl py-8 px-8 ">Symptoms:</h2>
                    <div className="grid grid-cols-3 gap-4 ">
                        {options.map((option) => (
                          <label key={option.value} className="block ml-20 text-slate-600 ">
                            <input
                              multiple={true}
                              type="checkbox"
                              value={option.value}
                              checked={selectedOptions.includes(option.value)}
                              onChange={handleChange}
                              className="form-checkbox h-5 w-5 text-slate-600 transition duration-150 ease-in-out  mx-auto"
                            />
                            <span className="ml-2 text-slate-600 ">{option.label}</span>
                          </label>
                        ))}
                    </div>
                </div>

                <button className="bg-blue-300  text-white w-1/3 mx-auto my-2 px-4 py-2 rounded-2xl  hover:text-white font-bold  hover:scale-110 transition-all duration-300 hover:bg-emerald-700" type="submit">Check Condition</button>
            </form>
        </div>
      </div>
    
  );
}

export default AppointmentForm;