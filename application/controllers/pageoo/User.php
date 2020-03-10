<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	public function login()
	{
		$identity = $this->input->post("email");
        $password = $this->input->post("password");
        
		$logged_in = $this->ion_auth->login($identity, $password, FALSE);
		if($logged_in){
			$domains = $this->config->item('domains');
			$user = $this->ion_auth->user()->row();
			foreach ($domains as $domain) {
				$this->input->set_cookie(array('name' => 'name', 'value' => 'logged-in', 'expire' => 86500, 'domain' => $domain));
				$this->input->set_cookie(array('name' => 'identity', 'value' => $user->email, 'expire' => 86500, 'domain' => $domain));
				$this->input->set_cookie(array('name' => 'email', 'value' => $user->email, 'expire' => 86500, 'domain' => $domain));
				$this->input->set_cookie(array('name' => 'user_id', 'value' => $user->id, 'expire' => 86500, 'domain' => $domain));
				$this->input->set_cookie(array('name' => 'old_last_login', 'value' => $user->last_login, 'expire' => 86500, 'domain' => $domain));
				$this->input->set_cookie(array('name' => 'last_check', 'value' => $user->last_login, 'expire' => 86500, 'domain' => $domain));
			}
		}

        redirect(base_url());
	}
	public function logout()
	{
		$this->ion_auth->logout();
        redirect(base_url());
	}
}
