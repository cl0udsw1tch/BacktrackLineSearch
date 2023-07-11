function x_next = backtrack_line_search(x_k)
    p_k = - np.linalg.inv(hess_f(x_k)) * grad_f(x_k); % Newton
    alpha = 1;
    while f(x_k + alpha * p_k) > f(x_k) + c * alpha * grad_f(x_k).T * p_k % Armijo == FALSE
        alpha = alpha * rho;
    end
    
    % Armijo == True 
    x_next = x_k + alpha * p_k;
   
end