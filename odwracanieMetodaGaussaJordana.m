function macierzOdwrocona = odwracanieMetodaGaussaJordana(A)
B = eye(size(A));
macierzOdwrocona = metodaGaussaJordana(A, B);
end

